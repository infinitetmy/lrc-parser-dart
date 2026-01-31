import 'package:test/test.dart';
import '../lib/lrc_parser.dart';
import '../lib/src/model/lyrics_model.dart';

void main() {
  group('LrcParser Tests', () {
    test('Parses standard Normal LRC file correctly', () {
      const input = """
[ti:Simple Song]
[ar:Artist A]
[length:03:30]
[00:10.00] Line One
[00:20.00] Line Two
""";
      final lrc = LrcParser.parseString(input);

      expect(lrc.title, equals('Simple Song'));
      expect(lrc.artist, equals('Artist A'));
      expect(lrc.length, equals(Duration(minutes: 3, seconds: 30)));
      expect(lrc.type, equals(LrcType.normal));
      expect(lrc.lines.length, equals(2));
      expect(lrc.lines[0].timestamp, equals(Duration(seconds: 10)));
      expect(lrc.lines[0].text, equals(' Line One'));
      expect(lrc.lines[1].text, equals(' Line Two'));
      expect(lrc.errors, isEmpty);
    });

    test('Parses Word-Level LRC file correctly', () {
      const input = """
[00:01.00] <00:01.00>Hel <00:01.50>lo <00:02.00>World
""";
      final lrc = LrcParser.parseString(input);
      expect(lrc.type, equals(LrcType.extended));
      expect(lrc.lines.length, equals(1));
      
      final line = lrc.lines.first;
      expect(line.words.length, equals(3));
      expect(line.timestamp,equals(Duration(seconds: 1)));
      expect(line.words[0].text, equals('Hel '));
      expect(line.words[0].timestamp, equals(Duration(seconds: 1)));
      expect(line.words[1].text, equals('lo '));
      expect(line.words[1].timestamp, equals(Duration(seconds: 1, milliseconds: 500)));

      expect(line.text, equals('Hel lo World'));
    });

    test('Parses Hybrid LRC file correctly', () {
      const input = """
[00:05.00] Standard Line
[00:10.00] <00:10.00>Word <00:11.00>Sync
""";
      final lrc = LrcParser.parseString(input);
      expect(lrc.type, equals(LrcType.hybrid));
      expect(lrc.lines.length, equals(2));
    });

    test('Handles duplicate tags with error', () {
      const input = """
[ti:Title 1]
[ti:Title 2]
""";
      final lrc = LrcParser.parseString(input);
      
      expect(lrc.title, equals('Title 2')); // Last wins
      expect(lrc.errors.length, equals(1));
      expect(lrc.errors.first.message, contains('Duplicate tag key'));
    });

    test('Handles overly precise timestamps with error and truncation', () {
      const input = "[00:01.12345] High Precision";
      final lrc = LrcParser.parseString(input);

      expect(lrc.errors.length, equals(1));
      expect(lrc.errors.first.message, contains('precision too high'));
      
      // Should still parse into Microseconds correctly
      // 1.12345 seconds = 1,123,450 microseconds
      expect(lrc.lines.first.timestamp.inMicroseconds, equals(1123450));
    });

    test('Handles sub-timestamp logic errors', () {
      const input = "[00:10.00] <00:10.00>Start <00:09.00>Backwards";
      final lrc = LrcParser.parseString(input);

      // Should have 2 errors: 
      // 1. 09.00 < 10.00 (Previous sub-tag)
      // 2. 09.00 < 10.00 (Main line start)
      expect(lrc.errors.length, greaterThanOrEqualTo(1)); 
      expect(lrc.errors.any((e) => e.message.contains('flow error')), isTrue);
    });

    test('Parses Offset tag correctly', () {
      const input = "[offset:+500]";
      final lrc = LrcParser.parseString(input);
      expect(lrc.offset?.inMilliseconds, equals(500));
    });
  });
}