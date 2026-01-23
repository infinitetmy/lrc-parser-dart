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

  LrcFile({
    required this.type,
    required this.tags,
    required this.lines,
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

  /// length: Length of the song (mm:ss)
  String? get length => tags['length'];

  /// by: Author of the LRC file (not the song)
  String? get creator => tags['by'];

  /// offset: Global offset value in milliseconds (+/-).
  /// Returns the raw string. parsed int can be added if needed.
  String? get offset => tags['offset'];

  /// re/tool: The player or editor that created the LRC file
  String? get tool => tags['re'] ?? tags['tool'];

  /// ve: The version of the program
  String? get version => tags['ve'];

  /// #: Comments (The parser usually stores these with key '#')
  String? get comment => tags['#'];
}