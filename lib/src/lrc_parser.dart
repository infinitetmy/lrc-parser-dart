import 'package:antlr4/antlr4.dart';
import '../model/lyrics_model.dart';
import '../generated/LRCMixedLexer.dart';
import '../generated/LRCMixedParser.dart';
import './lrc_handler.dart';
import './lrc_error_listener.dart';

class LrcParser {
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