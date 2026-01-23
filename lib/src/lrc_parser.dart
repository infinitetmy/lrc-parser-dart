import '../generated/LRCMixedParser.dart';
import '../generated/LRCMixedParserBaseVisitor.dart';
import '../model/lyrics_model.dart'; 

class LrcProcessor extends LRCMixedParserBaseVisitor<void> {
  final Map<String, String> _tags = {};
  final List<LrcLine> _lines = [];

  // Counters for classification
  int _lineLevelCount = 0; // Counts standard lines
  int _wordLevelCount = 0; // Counts word-synced lines

  LrcFile getResult() {
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

    return LrcFile(
      type: type,
      tags: _tags,
      lines: _lines,
    );
  }

  // --- Metadata ---
  @override
  void visitIdLine(IdLineContext ctx) {
    final key = ctx.key?.text?.toLowerCase() ?? "";
    final value = ctx.idValue()?.text ?? "";
    
    if (key.isNotEmpty) {
      _tags[key] = value;
    }
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
      final time = _parseTimeTag(timeTagCtx);
      if (time != null) {
        _lines.add(LrcLine(
          timestamp: time,
          words: [LrcWord(timestamp: time, text: fullText)],
        ));
      }
    }
  }

  // --- Word Level Lyrics ---
  @override
  void visitWordLevelTimeLine(WordLevelTimeLineContext ctx) {
    _wordLevelCount++;

    final lineStartTime = _parseTimeTag(ctx.timeTag());
    if (lineStartTime == null) return;

    final List<LrcWord> words = [];
    
    Duration currentWordTime = lineStartTime;
    StringBuffer currentWordBuffer = StringBuffer();

    for (var i = 0; i < ctx.childCount; i++) {
      final child = ctx.getChild(i);

      if (child is SubtimeTagContext) {
        final newTime = _parseSubTimeTag(child);
        if (newTime != null) {
          if (currentWordBuffer.isNotEmpty) {
            words.add(LrcWord(
              timestamp: currentWordTime, 
              text: currentWordBuffer.toString()
            ));
            currentWordBuffer.clear();
          }
          currentWordTime = newTime;
        }
      } 
      else if (child is LyricsContext) {
        currentWordBuffer.write(child.text);
      }
    }

    if (currentWordBuffer.isNotEmpty) {
      words.add(LrcWord(
        timestamp: currentWordTime, 
        text: currentWordBuffer.toString()
      ));
    }

    _lines.add(LrcLine(timestamp: lineStartTime, words: words));
  }

  // --- Empty Content ---
  @override
  void visitEmptyContentTimeLine(EmptyContentTimeLineContext ctx) {
    final time = _parseTimeTag(ctx.timeTag());
    if (time != null) {
      _lines.add(LrcLine(timestamp: time, words: []));
    }
  }

  // --- Helpers ---

  Duration? _parseTimeTag(TimeTagContext? ctx) {
    if (ctx == null) return null;
    return _parseDurationParts(ctx.min?.text, ctx.sec?.text, ctx.ms?.text);
  }

  Duration? _parseSubTimeTag(SubtimeTagContext? ctx) {
    if (ctx == null) return null;
    return _parseDurationParts(ctx.min?.text, ctx.sec?.text, ctx.ms?.text);
  }

  Duration? _parseDurationParts(String? minStr, String? secStr, String? msStr) {
    try {
      final min = int.parse(minStr ?? '0');
      final sec = int.parse(secStr ?? '0');
      final msRaw = msStr ?? '0';
      int ms = int.parse(msRaw);
      if (msRaw.length == 2) ms *= 10; 
      return Duration(minutes: min, seconds: sec, milliseconds: ms);
    } catch (e) {
      return null;
    }
  }
}