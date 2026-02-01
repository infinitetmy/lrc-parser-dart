
import 'package:test/test.dart';
import 'package:lrc_parser/lrc_parser.dart';

void main() {
  group('Shortcut Parser Tests', () {
    const mixedInput = """
[ti:Shortcut Title]
[ar:Shortcut Artist]
[00:01.00] Line 1
[00:02.00] Line 2
""";

    test('parseTagsOnly gets tags and ignores lyrics', () async {
      final tags = LrcParser.parseTagsOnly(mixedInput);
      
      expect(tags['ti'], equals('Shortcut Title'));
      expect(tags['ar'], equals('Shortcut Artist'));
      // Ensure it stopped cleanly without error
    });

    test('parseTagsOnly handles file with no tags', () async {
      const input = "[00:01.00] Just Lyrics";
      final tags = LrcParser.parseTagsOnly(input);
      expect(tags, isEmpty);
    });

    test('parseLyricsOnly gets lines and ignores tags', () async {
      final lines = LrcParser.parseLyricsOnly(mixedInput);
      
      expect(lines.length, equals(2));
      expect(lines[0].text, equals(' Line 1'));
      expect(lines[1].text, equals(' Line 2'));
    });

    test('parseLyricsOnly handles file with no lyrics', () async {
      const input = "[ti:Only Header]";
      final lines = LrcParser.parseLyricsOnly(input);
      expect(lines, isEmpty);
    });
  });
}