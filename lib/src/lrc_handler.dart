import 'package:antlr4/antlr4.dart';
import '../generated/LRCMixedParserBaseVisitor.dart';
import '../generated/LRCMixedLexer.dart';
import '../generated/LRCMixedParser.dart';
import '../model/lyrics_model.dart';
import './lrc_error_listener.dart';

class LrcHandler extends LRCMixedParserBaseVisitor<void> {
  final Map<String, String> _tags = {};
  final List<LrcLine> _lines = [];
  final List<LrcParseError> _semanticErrors = [];

  // Counters for classification
  int _lineLevelCount = 0; // Counts standard lines
  int _wordLevelCount = 0; // Counts word-synced lines

  LrcFile getResult(List<LrcParseError> syntaxErrors) {
    _lines.sort();

    // logic to determine LrcType
    LrcType type;

    if (_wordLevelCount == 0) {
      type = LrcType.normal;
    } else if (_lineLevelCount > 0 && _wordLevelCount > 0) {
      type = LrcType.hybrid;
    } else {
      type = LrcType.extended;
    }

    final allErrors = [...syntaxErrors, ..._semanticErrors];
    allErrors.sort((a, b) => a.line.compareTo(b.line));

    return LrcFile(type: type, tags: _tags, lines: _lines, errors: allErrors);
  }

  // --- Metadata ---
  @override
  void visitIdLine(IdLineContext ctx) {
    final rawKey = ctx.key?.text;

    final key = ctx.key?.text ?? "";
    final value = ctx.idValue()?.text ?? "";

    // CHECK FOR DUPLICATES
    if (_tags.containsKey(key)) {
      _semanticErrors.add(
        LrcParseError(
          line: ctx.start?.line ?? -1,
          column: ctx.start?.charPositionInLine ?? -1,
          message:
              "Duplicate tag key found: '$rawKey'. Previous value was '${_tags[key]}'. Overwriting with '$value'.",
          invalidCharacter: rawKey ?? "",
        ),
      );
    }

    _tags[key] = value;
  }

  // --- Line Level Lyrics ---
  @override
  void visitLineLevelTimeLine(LineLevelTimeLineContext ctx) {
    _lineLevelCount++;

    final buffer = StringBuffer();
    for (var i = 0; i < ctx.childCount; i++) {
      final child = ctx.getChild(i);
      if (child is Lyrics2Context || child is LyricsContext) {
        buffer.write(child?.text ?? '');
      }
    }
    final fullText = buffer.toString();

    // Line level lines might have multiple headers [00:01][00:10]Text
    for (var timeTagCtx in ctx.timeTags()) {
      final time = _parseDurationWithContext(
        timeTagCtx,
        timeTagCtx.min,
        timeTagCtx.sec,
        timeTagCtx.ms,
      );
      if (time != null) {
        _lines.add(
          LrcLine(
            timestamp: time,
            words: [LrcWord(timestamp: time, text: fullText)],
          ),
        );
      }
    }
  }

  // --- Word Level Lyrics ---
  @override
  void visitWordLevelTimeLine(WordLevelTimeLineContext ctx) {
    _wordLevelCount++;

    final lineStartTime = _parseDurationWithContext(
      ctx.timeTag(),
      ctx.timeTag()?.min,
      ctx.timeTag()?.sec,
      ctx.timeTag()?.ms,
    );
    if (lineStartTime == null) return;

    final List<LrcWord> words = [];

    Duration currentWordTime = lineStartTime;
    StringBuffer currentWordBuffer = StringBuffer();

    void commitWord(Duration nextTime) {
      if (currentWordBuffer.isNotEmpty) {
        words.add(
          LrcWord(
            timestamp: currentWordTime,
            text: currentWordBuffer.toString(),
          ),
        );
        currentWordBuffer.clear();
      }
      currentWordTime = nextTime;
    }

    for (var i = 0; i < ctx.childCount; i++) {
      final child = ctx.getChild(i);

      if (child is SubtimeTagContext) {
        final newTime = _parseDurationWithContext(
          child,
          child.min,
          child.sec,
          child.ms,
        );

        if (newTime != null) {
          final timeStr = child.text;

          // Check if the new timestamp is earlier than the previous one
          if (newTime < currentWordTime) {
            _semanticErrors.add(
              LrcParseError(
                line: child.start?.line ?? -1,
                column: child.start?.charPositionInLine ?? -1,
                message:
                    "Sub-timestamp flow error: ($newTime) is earlier than previous timestamp ($currentWordTime).",
                invalidCharacter: timeStr,
              ),
            );
          }

          // Check if the new timestamp is earlier than the line start time
          if (newTime < lineStartTime) {
            _semanticErrors.add(
              LrcParseError(
                line: child.start?.line ?? -1,
                column: child.start?.charPositionInLine ?? -1,
                message:
                    "Sub-timestamp logic error: ($newTime) is earlier than the main line start time ($lineStartTime).",
                invalidCharacter: timeStr,
              ),
            );
          }

          commitWord(newTime);
        }
      } else if (child is LyricsContext) {
        currentWordBuffer.write(child.text);
      }
    }

    if (currentWordBuffer.isNotEmpty) {
      words.add(
        LrcWord(timestamp: currentWordTime, text: currentWordBuffer.toString()),
      );
    }

    _lines.add(LrcLine(timestamp: lineStartTime, words: words));
  }

  // --- Empty Content ---
  @override
  void visitEmptyContentTimeLine(EmptyContentTimeLineContext ctx) {
    final time = _parseDurationWithContext(
      ctx.timeTag(),
      ctx.timeTag()?.min,
      ctx.timeTag()?.sec,
      ctx.timeTag()?.ms,
    );
    if (time != null) {
      _lines.add(LrcLine(timestamp: time, words: []));
    }
  }

  // --- Helpers ---

  Duration? _parseDurationWithContext(
    ParserRuleContext? ctx,
    Token? minToken,
    Token? secToken,
    Token? msToken,
  ) {
    if (ctx == null ||
        minToken == null ||
        secToken == null ||
        msToken == null) {
      return null;
    }

    final msText = msToken.text ?? '0';

    if (msText.length > 3) {
      _semanticErrors.add(
        LrcParseError(
          line: ctx.start?.line ?? -1,
          column: ctx.start?.charPositionInLine ?? -1,
          message:
              "Timestamp precision too high: found ${msText.length} digits in '$msText'. Standard limit is 3.",
          invalidCharacter: msText,
        ),
      );
    }

    try {
      final min = int.parse(minToken.text ?? '0');
      final sec = int.parse(secToken.text ?? '0');

      String microsecondStr = msText;

      if (microsecondStr.length > 6) {
        microsecondStr = microsecondStr.substring(0, 6);
      } else {
        microsecondStr = microsecondStr.padRight(6, '0');
      }

      final fractionalMicros = int.parse(microsecondStr);

      final int totalMicros =
          (min * 60 * 1000000) + (sec * 1000000) + fractionalMicros;

      return Duration(microseconds: totalMicros);
    } catch (e) {
      return null;
    }
  }

  /// Parses a raw LRC string and returns an [LrcFile] object.
  /// 
  /// This method handles the setup of the Lexer, Parser, Error Listeners,
  /// and the Visitor to process the parse tree.
  static LrcFile parseString(String rawLrcContent) {
    final input = InputStream.fromString(rawLrcContent);
    
    // 1. Setup Lexer
    final lexer = LRCMixedLexer(input);
    
    // 2. Setup Error Listener to capture syntax errors
    final errorListener = LrcErrorListener();
    
    // Remove default console listeners and add our custom one
    lexer.removeErrorListeners();
    lexer.addErrorListener(errorListener);

    final tokens = CommonTokenStream(lexer);
    
    // 3. Setup Parser
    final parser = LRCMixedParser(tokens);
    parser.removeErrorListeners();
    parser.addErrorListener(errorListener);

    // 4. Generate Parse Tree (starting at rule 'lrcFile')
    final tree = parser.lrcFile();

    // 5. Run Visitor (Processor) to extract data
    final visitor = LrcHandler();
    visitor.visit(tree);

    // 6. Return result with captured errors
    return visitor.getResult(errorListener.errors);
  }
}