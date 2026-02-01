import 'package:test/test.dart';
import 'package:lrc_parser/lrc_parser.dart';

void main() {
  group('LrcEditor Tests', () {
    test('Creates from scratch and adds lines correctly', () {
      final editor = LrcEditor();
      editor.title = "New Song";
      
      // Add lines out of order to test sorting
      editor.addLyricsLine(timestamp: Duration(seconds: 10), text: "Line 2");
      editor.addLyricsLine(timestamp: Duration(seconds: 5), text: "Line 1");

      expect(editor.lines.length, equals(2));
      expect(editor.lines[0].text, equals("Line 1")); // Should be first
      expect(editor.lines[1].text, equals("Line 2"));
    });

    test('Shifts time correctly', () {
      final editor = LrcEditor();
      editor.addLyricsLine(timestamp: Duration(seconds: 10), text: "A");
      
      // Shift forward 1 second
      editor.shiftTime(Duration(seconds: 1));
      expect(editor.lines[0].timestamp, equals(Duration(seconds: 11)));

      // Shift backward 2 seconds
      editor.shiftTime(Duration(seconds: -2));
      expect(editor.lines[0].timestamp, equals(Duration(seconds: 9)));
    });

    test('Scales time correctly', () {
      final editor = LrcEditor();
      editor.addLyricsLine(timestamp: Duration(seconds: 10), text: "A");
      
      // Double speed (timestamps become half) -> Scale by 0.5
      editor.scaleTime(0.5);
      expect(editor.lines[0].timestamp, equals(Duration(seconds: 5)));
    });

    test('Formats output string correctly (Linear)', () {
      final editor = LrcEditor();
      editor.title = "Test";
      editor.addLyricsLine(timestamp: Duration(seconds: 1), text: "Hello");

      final output = editor.format();
      expect(output, contains('[ti:Test]'));
      expect(output, contains('[00:01.00]Hello'));
    });

    test('Formats output string correctly (Collapsed)', () {
      final editor = LrcEditor();
      editor.addLyricsLine(timestamp: Duration(seconds: 1), text: "Chorus");
      editor.addLyricsLine(timestamp: Duration(seconds: 5), text: "Chorus");

      final output = editor.format(isCollapsed: true);
      // Expect standard stacked format: [00:01.00][00:05.00]Chorus
      expect(output, contains('[00:01.00][00:05.00]Chorus'));
    });

    test('Handles Extended Lyrics creation', () {
      final editor = LrcEditor();
      editor.addLyricsLine(
        timestamp: Duration(seconds: 1),
        wordParts: [
          (Duration(seconds: 1), "A"),
          (Duration(seconds: 2), "B")
        ]
      );

      expect(editor.type, equals(LrcType.extended));
      expect(editor.lines.first.words.length, equals(2));
    });
  });
}