# Dart LRC Parser & Editor

A Dart library for processing LRC lyrics files. This library supports parsing, validating, modifying, and exporting lyrics in **Normal** (line-level), **Extended** (word-level), and **Hybrid** formats.

## Features

- **Parsing**: Handles mixed formats, duplicated tags, and overly precise timestamps.
- **Validation**: Detects syntax errors, duplicate metadata keys, and logic errors.
- **LrcEditor**: A powerful tool to:
  - Shift timestamps.
  - Scale playback speed (speed-up/slow-down).
  - Add new lyrics (both simple and word-synced).
  - Edit metadata with type safety.
- **Flexible Export**: formatting options to output collapsed or linear LRC strings.

## Installation

1.  Add the ANTLR runtime to your `pubspec.yaml`:

```yaml
dependencies:
  antlr4: 4.13.2
```

## Usage

### 1. Parsing LRC Content

Use the `LrcParser` class to convert a raw string into an `LrcFile` object.

```dart
import 'package:lrc_parser/lrc_parser.dart';

void main() {
  const rawLrc = """
[ti:Example Song]
[ar:Artist Name]
[00:10.00]Line one lyrics
[00:15.00]<00:15.00>Kara <00:15.50>oke <00:16.00>Mode
""";

  // Parse the string
  final lrcFile = LrcParser.parseString(rawLrc);

  // Access Metadata
  print("Title: ${lrcFile.title}");
  print("Type: ${lrc.type}"); // LrcType.hybrid

  // Access Lines
  for (var line in lrcFile.lines) {
    print("[${line.timestamp}] ${line.text}");

    // Check for sub-timestamps
    if (line.words.length > 1) {
      print("  -> Details: ${line.words}");
    }
  }
}
```

### 2. Error Handling

The parser does not throw exceptions for malformed content; instead, it collects them in the `errors` list.

```dart
if (lrcFile.errors.isNotEmpty) {
  print("--- Errors Detected ---");
  for (var e in lrcFile.errors) {
    // Example: Line 3: Timestamp precision too high...
    print("Line ${e.line}: ${e.message} (Found: '${e.invalidCharacter}')");
  }
}
```

### 3. Editing with `LrcEditor`

The `LrcEditor` allows you to modify an existing file or build one from scratch.

```dart
import 'package:my_lrc_lib/lrc_editor.dart';

// Initialize from parsed model
final editor = LrcEditor.fromModel(lrcFile);

// OR Initialize empty
// final editor = LrcEditor();

// --- Editing Metadata ---
editor.artist = "New Artist";
editor.length = Duration(minutes: 3, seconds: 45); // Sets [length:03:45]
editor.tool = "MyDartApp"; // Sets [re:MyDartApp]
editor.addCustomTag("source", "Internet");

// --- Editing Lyrics ---

// 1. Time Shifting: Delay song by 500ms
editor.shiftTime(Duration(milliseconds: 500));

// 2. Speed Scaling: Convert for 1.2x speed (shorter durations)
editor.scaleTime(1 / 1.2);

// 3. Adding a new Standard Line
editor.addLyricsLine(
  timestamp: Duration(seconds: 20),
  text: "New standard line inserted chronologically"
);

// 4. Adding a new Word-Synced Line
editor.addLyricsLine(
  timestamp: Duration(seconds: 25),
  wordParts: [
    (Duration(seconds: 25), "Sin"),
    (Duration(milliseconds: 25500), "gle"),
    (Duration(seconds: 26), " Word"),
  ]
);
```

### 4. Exporting / Saving

Convert the edited content back to a string.

```dart
// Standard Output
String output = editor.format();

// Collapsed Output
// Merges identical lines (e.g. [00:10][00:20]Chorus)
String compactOutput = editor.format(isCollapsed: true);

print(compactOutput);
```

## Project Structure

- `lrc_parser.dart`: Main entry point. Contains `LrcParser.parseString()`.
- `lyrics_model.dart`: Data classes (`LrcFile`, `LrcLine`, `LrcWord`) and the `LrcParseError` class.
- `lrc_editor.dart`: Logic for manipulating lyrics (Time shifting, adding lines, formatting).
- `lrc_handler.dart`: ANTLR Visitor implementation that converts the Parse Tree into the Model and validates logic.
- `lrc_error_listener.dart`: ANTLR Error Listener for capturing syntax errors.
- `LRCMixedParser.dart` / `LRCMixedLexer.dart`: Generated ANTLR code.
