// Generated from LRCMixedParser.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'LRCMixedParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [LRCMixedParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class LRCMixedParserVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [LRCMixedParser.lrcFile].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLrcFile(LrcFileContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.idSection].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIdSection(IdSectionContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.timeSection].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTimeSection(TimeSectionContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.idLine].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIdLine(IdLineContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.idValue].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIdValue(IdValueContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.wordLevelTimeLine].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWordLevelTimeLine(WordLevelTimeLineContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.lineLevelTimeLine].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLineLevelTimeLine(LineLevelTimeLineContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.emptyContentTimeLine].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitEmptyContentTimeLine(EmptyContentTimeLineContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.timeTag].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTimeTag(TimeTagContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.lyrics].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLyrics(LyricsContext ctx);

  /// Visit a parse tree produced by [LRCMixedParser.lyrics2].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLyrics2(Lyrics2Context ctx);

  /// Visit a parse tree produced by [LRCMixedParser.lyrics3].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLyrics3(Lyrics3Context ctx);

  /// Visit a parse tree produced by [LRCMixedParser.subtimeTag].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSubtimeTag(SubtimeTagContext ctx);
}