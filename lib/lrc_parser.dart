import 'package:antlr4/antlr4.dart';
import 'src/model/lyrics_model.dart';
import 'src/generated/LRCMixedLexer.dart';
import 'src/generated/LRCMixedParser.dart';
import 'src/lrc_handler.dart';
import 'src/lrc_error_listener.dart';
import 'src/model/list_token_source.dart' as token_source;

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

  /// Optimized Tag Parser
  /// Manually pulls tokens only until the lyrics start.
  /// Prevents tokenizing the entire file.
  static Map<String, String> parseTagsOnly(String inputContent) {
    final input = InputStream.fromString(inputContent);
    final lexer = LRCMixedLexer(input);

    // 1. Manually Lex just the header
    final headerTokens = <Token>[];
    
    while (true) {
      // Pull one token at a time
      final token = lexer.nextToken();
      
      // Stop if EOF
      if (token.type == IntStream.EOF) {
        headerTokens.add(token);
        break;
      }

      // Check for start of lyrics: [00...
      // The grammar defines lyrics starting with a TAG_OPEN followed by TIME_NUM
      if (token.type == LRCMixedParser.TOKEN_TAG_OPEN) {
        // We need to look ahead one token to see if it's a timestamp
        // However, nextToken() consumes. 
        // Strategy: We check if the *previous* token suggests we are done, 
        // or we check the text of this token if needed. 
        
        // Simpler approach for LRC: 
        // If we hit a '[' check the *next* character in the input stream? 
        // Or just lex the next token and if it is TIME_NUM, stop.
        
        headerTokens.add(token); // Add the '['
        final next = lexer.nextToken(); // Lex the next one
        
        if (next.type == LRCMixedParser.TOKEN_TIME_NUM) {
          // Found lyrics! Stop here. 
          // We do NOT add 'next' to headerTokens because we want the parser 
          // to see a valid stream that ends here, or just enough to parse IDs.
          
          // Add EOF to simulate end of stream for the parser
          headerTokens.removeRange(headerTokens.length - 2, headerTokens.length);
          headerTokens.add(CommonToken(IntStream.EOF));
          break;
        } else {
          // It was a tag key (e.g., 'ti'), keep going
          headerTokens.add(next);
        }
      } else {
        headerTokens.add(token);
      }
    }
    print(headerTokens);

    // 2. Create a stream from our small list of tokens
    // We use a simple ListTokenSource logic wrapper
    final tokenSource = token_source.ListTokenSource(headerTokens);
    final stream = CommonTokenStream(tokenSource);
    
    // 3. Parse
    final parser = LRCMixedParser(stream);
    parser.removeErrorListeners();

    try {
      final tree = parser.idSection();
      final visitor = LrcHandler();
      visitor.visitIdSection(tree);
      return visitor.getResult([]).tags;
    } catch (e) {
      print(e);
      return {};
    }
  }

  /// Lyrics Parser
  /// For lyrics, we usually need to process the whole file anyway.
  /// Standard CommonTokenStream is acceptable here.
  static List<LrcLine> parseLyricsOnly(String inputContent) {
    final input = InputStream.fromString(inputContent);
    final lexer = LRCMixedLexer(input);
    final tokens = CommonTokenStream(lexer);
    
    // Force load (lexing happens here)
    tokens.fill(); 

    // Find start index of lyrics to skip parsing tags
    int startIndex = 0;
    final allTokens = tokens.getTokens();
    if (allTokens != null) {
      for (int i = 0; i < allTokens.length - 1; i++) {
        if (allTokens[i].type == LRCMixedParser.TOKEN_TAG_OPEN && 
            allTokens[i+1].type == LRCMixedParser.TOKEN_TIME_NUM) {
          startIndex = i;
          break;
        }
      }
    }

    tokens.seek(startIndex);

    final parser = LRCMixedParser(tokens);
    parser.removeErrorListeners();

    try {
      final tree = parser.timeSection();
      final visitor = LrcHandler();
      visitor.visitTimeSection(tree);
      return visitor.getResult([]).lines;
    } catch (e) {
      return [];
    }
  }
}
