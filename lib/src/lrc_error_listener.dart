import 'package:antlr4/antlr4.dart';
import '../model/lyrics_model.dart';

class LrcErrorListener extends BaseErrorListener {
  final List<LrcParseError> errors = [];

  @override
  void syntaxError(
    Recognizer<dynamic> recognizer,
    Object? offendingSymbol,
    int? line,
    int? charPositionInLine,
    String msg,
    RecognitionException<dynamic>? e,
  ) {
    // Determine the specific invalid text/token
    String invalidText = '';

    if (offendingSymbol is Token) {
      invalidText = offendingSymbol.text ?? '';
    } else if (offendingSymbol is int) {
      invalidText = String.fromCharCode(offendingSymbol);
    }

    errors.add(
      LrcParseError(
        line: line ?? 0,
        column: charPositionInLine ?? 0,
        message: msg,
        invalidCharacter: invalidText,
      ),
    );
  }
}