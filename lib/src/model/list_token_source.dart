import 'package:antlr4/antlr4.dart';

class ListTokenSource extends TokenSource {
  final List<Token> tokens;
  int _idx = 0;

  ListTokenSource(this.tokens);

  @override
  Token nextToken() {
    if (_idx >= tokens.length) {
      return CommonToken(IntStream.EOF);
    }
    return tokens[_idx++];
  }

  @override
  int get line => 0;

  @override
  int get charPositionInLine => 0;

  @override
  InputStream? get inputStream => null;

  @override
  // Fix 1: Return type must be non-nullable String
  String get sourceName => "ListSource";

  @override
  // Fix 2: Return type must be non-nullable TokenFactory<Token>
  // We cast the default factory to satisfy the strict type requirement
  TokenFactory<Token> get tokenFactory => CommonTokenFactory.DEFAULT as TokenFactory<Token>;

  @override
  // Fix 3: Parameter type must be non-nullable TokenFactory<Token>
  set tokenFactory(TokenFactory<Token> factory) {} 
}