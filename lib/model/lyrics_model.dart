/// Represents an error encountered during parsing.
class LrcParseError {
  final int line;
  final int column;
  final String message;
  final String invalidCharacter;

  LrcParseError({
    required this.line,
    required this.column,
    required this.message,
    required this.invalidCharacter,
  });

  @override
  String toString() => 'Line $line:$column - $message ($invalidCharacter)';
}

/// Defines the complexity of the LRC file.
enum LrcType {
  /// **Normal**: Contains only line-level timestamps.
  /// No word-level tags were found.
  normal,

  /// **Extended**: Contains only word-level timestamps
  /// or empty lines. No standard line-level text was found.
  extended,

  /// **Hybrid**: Contains a mix of line-level and word-level timestamps.
  hybrid,
}

/// Represents a single word or syllable with a timestamp.
class LrcWord {
  final Duration timestamp;
  final String text;

  LrcWord({required this.timestamp, required this.text});

  @override
  String toString() => '($timestamp) $text';
}

/// Represents a single line of lyrics.
class LrcLine implements Comparable<LrcLine> {
  /// The start time of the line.
  final Duration timestamp;

  /// The breakdown of words/syllables in this line.
  /// For 'Normal' lines, this list contains exactly one LrcWord with the full text.
  final List<LrcWord> words;

  LrcLine({required this.timestamp, required this.words});

  /// Joins all contained words.
  String get text => words.map((w) => w.text).join('');

  @override
  int compareTo(LrcLine other) => timestamp.compareTo(other.timestamp);

  @override
  String toString() => '[$timestamp] $text';
}

/// Represents the parsed LRC file.
class LrcFile {
  final LrcType type;
  final Map<String, String> tags;
  final List<LrcLine> lines;
  final List<LrcParseError> errors;

  LrcFile({
    required this.type,
    required this.tags,
    required this.lines,
    this.errors = const [],
  });

  // --- Standard Tag Getters ---

  /// ti: Title of the song
  String? get title => tags['ti'];

  /// ar: Artist performing the song
  String? get artist => tags['ar'];

  /// al: Album the song is from
  String? get album => tags['al'];

  /// au: Author of the song (Composer)
  String? get author => tags['au'];

  /// lr: Lyricist of the song
  String? get lyricist => tags['lr'];

  /// by: Author of the LRC file (not the song)
  String? get creator => tags['by'];

  /// re/tool: The player or editor that created the LRC file
  String? get tool => tags['re'] ?? tags['tool'];

  /// ve: The version of the program
  String? get version => tags['ve'];

  /// #: Comments (The parser usually stores these with key '#')
  String? get comment => tags['#'];

  /// length: Length of the song.
  /// Parsed from "mm:ss" string (e.g., "03:45" -> Duration(minutes: 3, seconds: 45))
  Duration? get length {
    final val = tags['length']?.trim();
    if (val == null) return null;

    try {
      final parts = val.split(':');
      if (parts.length == 2) {
        final min = int.parse(parts[0]);
        final sec = int.parse(parts[1]);
        return Duration(minutes: min, seconds: sec);
      }
      // If needed, handle mm:ss.xx logic here, though standard is usually mm:ss
      return null;
    } catch (e) {
      return null;
    }
  }

  /// offset: Global offset value for the lyric times.
  /// Parsed from milliseconds string (e.g., "+500", "-200").
  Duration? get offset {
    final val = tags['offset']?.trim();
    if (val == null) return null;

    try {
      // int.parse handles "+" and "-" prefixes automatically
      final milliseconds = int.parse(val);
      return Duration(milliseconds: milliseconds);
    } catch (e) {
      return null;
    }
  }
}