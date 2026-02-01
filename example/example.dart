import 'package:lrc_parser/lrc_parser.dart'; // Adjust package name as needed

void main() async {
  print('=== 1. Parsing Raw LRC Content ===');

  // A raw LRC string with some intentional quirks:
  // - Duplicate [ti] tags
  // - A line-level lyrics line
  // - A word-level lyrics line
  // - An out-of-order timestamp
  // - A lyrics line with the same content and different timestamp
  const rawLrc = """
[ti:Old Title]
[ar:Original Artist]
[ti:Actual Title]
[length:03:30]
[00:01.00] First standard line
[00:05.00] <00:05.00>Ka <00:05.50>ra <00:06.00>oke
[00:03.00] I was inserted out of order
[00:09.00] First standard line
""";

  // Parse the string
  final lrcFile = LrcParser.parseString(rawLrc);

  // --- Inspecting Results ---
  print('Title: ${lrcFile.title}');
  print('Artist: ${lrcFile.artist}');
  print('Type: ${lrcFile.type}');

  // Print Lines
  print('\n--- Parsed Lines ---');
  for (var line in lrcFile.lines) {
    print('[${line.timestamp}] ${line.text}');
    // Show word details if it's a word-level lyrics line
    if (line.words.length > 1) {
      print('   -> Word Sync details: ${line.words}');
    }
  }

  // Check for Errors
  if (lrcFile.errors.isNotEmpty) {
    print('\n--- Parsing Errors/Warnings ---');
    for (var error in lrcFile.errors) {
      print('Line ${error.line}: ${error.message}');
    }
  }

  print('\n=== 2. Editing with LrcEditor ===');

  // Initialize Editor from the parsed model
  final editor = LrcEditor.fromModel(lrcFile);

  // 1. Modify Metadata
  editor.artist = "Remix Artist"; // Change artist
  editor.addCustomTag("source", "LRC Editor Example"); // Add custom tag
  
  // 2. Time Shifting
  // The song intro is longer now, shift everything by +2 seconds
  print('Action: Shifting time by +2 seconds...');
  editor.shiftTime(Duration(seconds: 2));

  // 3. Add a New Line
  // We can insert it anywhere; the editor sorts it automatically.
  print('Action: Adding a new lyrics line...');
  editor.addLyricsLine(
    timestamp: Duration(seconds: 10), 
    text: "This is a newly added line"
  );

  // 4. Speed Scaling
  // Let's pretend this is a Nightcore version (1.2x speed)
  // Timestamps need to be smaller, so we scale by (1 / 1.2)
  print('Action: Scaling speed by 1.2x...');
  editor.scaleTime(1 / 1.2);

  print('\n=== 3. Exporting Result ===');

  // Format as a linear string
  final result = editor.format();
  
  print('--- Final LRC Output ---');
  print(result);

  // Example of Collapsed Output
  print('--- Final LRC Output (compact version) ---');
  print(editor.format(isCollapsed: true));
}