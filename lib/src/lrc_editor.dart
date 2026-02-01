import 'model/lyrics_model.dart';

/// A mutable wrapper around LRC data to allow editing, time-shifting,
/// scaling, and re-exporting to string format.
class LrcEditor {
  /// Mutable map of tags
  final Map<String, String> tags;

  /// Mutable list of lines.
  /// Note: While the List is mutable, LrcLine objects themselves are immutable.
  List<LrcLine> lines;

  /// Defines how timestamps are formatted in the output string.
  /// If true, uses 3 digits (milliseconds). If false, uses 2 (centiseconds).
  bool useHighPrecision = false;

  /// Constructor: specific empty init
  LrcEditor({Map<String, String>? tags, List<LrcLine>? lines})
    : tags = tags ?? {},
      lines = lines ?? [];

  /// Factory: Initialize from an existing immutable LrcFile model
  factory LrcEditor.fromModel(LrcFile model) {
    final newTags = Map<String, String>.from(model.tags);
    final newLines = List<LrcLine>.from(model.lines);

    return LrcEditor(tags: newTags, lines: newLines);
  }

  // ===========================================================================
  // 1. Getters (Standard Tags + Type Logic)
  // ===========================================================================

  // Helper to reduce repetition for simple tag setters
  void _setTag(String key, String? value) {
    if (value == null) {
      tags.remove(key);
    } else {
      tags[key] = value;
    }
  }

  String? get title => tags['ti'];
  set title(String? v) => _setTag('ti', v);

  String? get artist => tags['ar'];
  set artist(String? v) => _setTag('ar', v);

  String? get album => tags['al'];
  set album(String? v) => _setTag('al', v);

  String? get author => tags['au'];
  set author(String? v) => _setTag('au', v);

  String? get lyricist => tags['lr'];
  set lyricist(String? v) => _setTag('lr', v);

  String? get creator => tags['by'];
  set creator(String? v) => _setTag('by', v);

  String? get version => tags['ve'];
  set version(String? v) => _setTag('ve', v);

  String? get comment => tags['#'];
  set comment(String? v) => _setTag('#', v);

  /// Getter for tool, checks 're' then 'tool' for compatibility.
  String? get tool => tags['re'] ?? tags['tool'];

  /// Setter for tool. Always writes to 're' key for standardization
  /// and removes 'tool' key to avoid confusion.
  set tool(String? v) {
    tags.remove('tool'); // Remove old key if present
    _setTag('re', v);
  }

  Duration? get length {
    final val = tags['length']?.trim();
    if (val == null) return null;
    try {
      final parts = val.split(':');
      if (parts.length == 2) {
        return Duration(
          minutes: int.parse(parts[0]),
          seconds: int.parse(parts[1]),
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  set length(Duration? d) {
    if (d == null) {
      tags.remove('length');
    } else {
      final totalSeconds = d.inSeconds.abs();
      final mm = (totalSeconds ~/ 60).toString().padLeft(2, '0');
      final ss = (totalSeconds % 60).toString().padLeft(2, '0');
      tags['length'] = '$mm:$ss';
    }
  }

  Duration? get offset {
    final val = tags['offset']?.trim();
    if (val == null) return null;
    try {
      return Duration(milliseconds: int.parse(val));
    } catch (e) {
      return null;
    }
  }

  set offset(Duration? d) {
    if (d == null) {
      tags.remove('offset');
    } else {
      final ms = d.inMilliseconds;
      tags['offset'] = ms > 0 ? '+$ms' : ms.toString();
    }
  }

  /// Adds or updates a single custom tag.
  void addCustomTag(String key, String value) {
    tags[key] = value;
  }

  /// Adds or updates multiple custom tags from a map.
  void addCustomTags(Map<String, String> newTags) {
    tags.addAll(newTags);
  }

  /// dynamic getter for LrcType based on current lines state
  LrcType get type {
    int lineLevelCount = 0;
    int wordLevelCount = 0;

    for (var line in lines) {
      if (line.words.isEmpty) {
        // Empty lines can exist in both, usually treated as neutral or extended
        continue;
      }

      // Check if it's a "Standard" line
      // A standard line typically has exactly 1 "word" component that covers the whole text
      // and starts at the same time as the line.
      bool isStandard =
          line.words.length == 1 &&
          line.words.first.timestamp == line.timestamp;

      if (isStandard) {
        lineLevelCount++;
      } else {
        wordLevelCount++;
      }
    }

    if (wordLevelCount == 0) return LrcType.normal;
    if (lineLevelCount > 0 && wordLevelCount > 0) return LrcType.hybrid;
    return LrcType.extended;
  }

  // ===========================================================================
  // 2. Manipulation Functions
  // ===========================================================================

  /// Adds a new lyrics line, inserting it at the correct chronological position.
  ///
  /// Provide EITHER [text] for a simple line OR [wordParts] for an extended line.
  /// - [timestamp]: The main timestamp for the line, e.g., `[00:10.00]`.
  /// - [text]: A simple string for the entire line's content.
  /// - [wordParts]: A list of (timestamp, word) pairs for word-level sync.
  ///   Example: `[(Duration(seconds: 10), 'Hello'), (Duration(milliseconds: 10500), ' world')]`
  void addLyricsLine({
    required Duration timestamp,
    String? text,
    List<(Duration, String)>? wordParts,
  }) {
    // Ensure one and only one content type is provided
    assert(
      (text != null) || (wordParts != null),
      'Provide either `text` OR `wordParts`, but not both or neither.',
    );

    late LrcLine newLine;
    if (text != null) {
      newLine = LrcLine(
        timestamp: timestamp,
        words: [LrcWord(timestamp: timestamp, text: text)],
      );
    } else {
      // wordParts must not be null here
      final words = wordParts!.map((part) {
        return LrcWord(timestamp: part.$1, text: part.$2);
      }).toList();
      newLine = LrcLine(timestamp: timestamp, words: words);
    }

    // Find the correct index to insert the new line to maintain sort order.
    if (lines.isEmpty) {
      lines.add(newLine);
      return;
    }

    for (int i = 0; i < lines.length; i++) {
      if (newLine.timestamp < lines[i].timestamp) {
        lines.insert(i, newLine);
        return; // Exit after successful insertion
      }
    }

    // If the loop completes, the new line is the latest one.
    lines.add(newLine);
  }

  /// Applies a time offset to lines.
  ///
  /// [offset]: The duration to add (positive) or subtract (negative).
  /// [startIndex]: Index to start applying change (inclusive, optional).
  /// [endIndex]: Index to stop applying change (exclusive, optional).
  void shiftTime(Duration offset, {int? startIndex, int? endIndex}) {
    if (lines.isEmpty) return;
    if (offset.inMicroseconds == 0) return;

    final start = startIndex ?? 0;
    final end = endIndex ?? lines.length;

    for (int i = start; i < end; i++) {
      if (i >= lines.length) break;

      final oldLine = lines[i];

      // Shift Line Timestamp
      final newTimestamp = oldLine.timestamp + offset;

      // Shift Word Timestamps
      final newWords = oldLine.words.map((w) {
        return LrcWord(timestamp: w.timestamp + offset, text: w.text);
      }).toList();

      // Replace with new instance
      lines[i] = LrcLine(
        timestamp: newTimestamp < Duration.zero ? Duration.zero : newTimestamp,
        words: newWords,
      );
    }
  }

  /// Scales timestamps by a factor (e.g., 1.5 for 1.5x speed).
  ///
  /// [factor]: Multiplier for the timestamps. (0.5 = half speed/longer time, 2.0 = double speed/shorter time)
  /// Note: Usually for "Speed Up" songs, the time duration gets *smaller*,
  /// so you would multiply by (1 / speed).
  void scaleTime(double factor) {
    if (factor <= 0 || factor == 1.0) return;

    for (int i = 0; i < lines.length; i++) {
      final oldLine = lines[i];

      Duration scale(Duration d) =>
          Duration(microseconds: (d.inMicroseconds * factor).round());

      lines[i] = LrcLine(
        timestamp: scale(oldLine.timestamp),
        words: oldLine.words
            .map((w) => LrcWord(timestamp: scale(w.timestamp), text: w.text))
            .toList(),
      );
    }
  }

  // ===========================================================================
  // 3. String Output Function
  // ===========================================================================

  /// Generates the LRC string content.
  ///
  /// [isCollapsed]: If true, merges identical text lines into standard stacked format:
  /// `[00:01.00][00:05.00] Chorus Text`.
  String format({bool isCollapsed = false}) {
    final sb = StringBuffer();

    // 1. Output ID Tags
    // We prioritize specific order for standard tags, then dump the rest
    final orderedKeys = [
      'ti',
      'ar',
      'al',
      'au',
      'lr',
      'by',
      're',
      'tool',
      've',
      '#',
      'length',
      'offset',
    ];

    for (var key in orderedKeys) {
      if (tags.containsKey(key)) {
        sb.writeln('[$key:${tags[key]}]');
      }
    }

    // Output any remaining custom tags
    tags.forEach((key, value) {
      if (!orderedKeys.contains(key)) {
        sb.writeln('[$key:$value]');
      }
    });

    sb.writeln(); // Empty line separator

    // 2. Output Lines
    if (isCollapsed) {
      sb.write(_formatCollapsedLines());
    } else {
      sb.write(_formatLinearLines());
    }

    return sb.toString();
  }

  String _formatLinearLines() {
    final sb = StringBuffer();
    for (var line in lines) {
      sb.writeln(_formatSingleLine(line));
    }
    return sb.toString();
  }

  String _formatCollapsedLines() {
    final sb = StringBuffer();

    // Grouping structure: Map<TextContent, List<Timestamp>>
    // Using a LinkedHashMap equivalent logic to preserve first-appearance order would be ideal,
    // but standard Maps in Dart are iteration-order-preserving.
    final Map<String, List<Duration>> grouped = {};
    // Extended lines that shouldn't be collapsed are stored separately or handled specifically.
    // Here we will simply print extended lines immediately and only group standard ones.
    final List<dynamic> renderOrder = [];

    for (var line in lines) {
      if (_isExtendedLine(line)) {
        // Don't collapse extended lines, treat them as unique rendering items
        renderOrder.add(line);
      } else {
        final text = line.text;
        if (!grouped.containsKey(text)) {
          grouped[text] = [];
          renderOrder.add(text); // Placeholder for the group
        }
        grouped[text]!.add(line.timestamp);
      }
    }

    for (var item in renderOrder) {
      if (item is LrcLine) {
        // It was an extended line, print normally
        sb.writeln(_formatSingleLine(item));
      } else if (item is String) {
        // It is a key for grouped standard lines
        final timestamps = grouped[item]!;
        for (var t in timestamps) {
          sb.write(_formatTimestamp(t));
        }
        sb.write(item); // Write the text
        sb.writeln();
      }
    }

    return sb.toString();
  }

  /// Determines if a line is "Extended" style (Word-synced) or just standard.
  bool _isExtendedLine(LrcLine line) {
    if (line.words.isEmpty) return false;
    // If multiple words, or 1 word with different timestamp than line start -> Extended
    if (line.words.length > 1) return true;
    return line.words.first.timestamp != line.timestamp;
  }

  String _formatSingleLine(LrcLine line) {
    final sb = StringBuffer();
    sb.write(_formatTimestamp(line.timestamp));

    if (_isExtendedLine(line)) {
      // Extended Format: [00:00.00] <00:00.00>Word <00:00.50>Word
      // We will use the space-delimited style implied by your parser grammar.
      for (var i = 0; i < line.words.length; i++) {
        final word = line.words[i];
        // Ensure space logic: if the word doesn't start with space, add one if appropriate?
        // Your parser preserved spaces in the 'text', so we just concat.
        // However, we need to inject the tag.

        // Standard Extended LRC format usually looks like:
        // [mm:ss.xx]<mm:ss.xx>Word<mm:ss.xx>Word
        sb.write(
          '<${_formatTimestamp(word.timestamp, isTag: true)}>${word.text}',
        );
      }
    } else {
      // Standard Format: [00:00.00] Text
      sb.write(line.text);
    }
    return sb.toString();
  }

  String _formatTimestamp(Duration d, {bool isTag = false}) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');

    String fractional;
    if (useHighPrecision) {
      // Milliseconds (3 digits)
      final ms = d.inMilliseconds.remainder(1000).toString().padLeft(3, '0');
      fractional = ms;
    } else {
      // Centiseconds (2 digits) - Standard LRC
      final cs = (d.inMilliseconds.remainder(1000) ~/ 10).toString().padLeft(
        2,
        '0',
      );
      fractional = cs;
    }

    if (isTag) {
      // Inner tag format <mm:ss.xx> (without brackets, brackets handled by caller)
      return '$minutes:$seconds.$fractional';
    }
    return '[$minutes:$seconds.$fractional]';
  }
}
