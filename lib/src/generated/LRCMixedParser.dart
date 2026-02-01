// Generated from LRCMixedParser.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'LRCMixedParserVisitor.dart';
import 'LRCMixedParserBaseVisitor.dart';
const int RULE_lrcFile = 0, RULE_idSection = 1, RULE_timeSection = 2, RULE_idLine = 3, 
          RULE_idValue = 4, RULE_wordLevelTimeLine = 5, RULE_lineLevelTimeLine = 6, 
          RULE_emptyContentTimeLine = 7, RULE_timeTag = 8, RULE_lyrics1 = 9, 
          RULE_lyrics2 = 10, RULE_lyrics3 = 11, RULE_subtimeTag = 12, RULE_lyrics = 13;
class LRCMixedParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_NEWLINE = 1, TOKEN_TAG_OPEN = 2, TOKEN_TAG_CLOSE = 3, 
                   TOKEN_COLON = 4, TOKEN_DOT = 5, TOKEN_ID_KEY = 6, TOKEN_ID_VALUE = 7, 
                   TOKEN_TIME_NUM = 8, TOKEN_LYRICS_TEXT = 9, TOKEN_SPACE = 10, 
                   TOKEN_SUB_TIME_TAG_OPEN = 11, TOKEN_SUB_TIME_TAG_CLOSE = 12, 
                   TOKEN_ROOT_WS = 13, TOKEN_ID_TAG_CLOSE = 14, TOKEN_STD_TIME_COLON = 15, 
                   TOKEN_STD_TIME_DOT = 16, TOKEN_WORD_TIME_UNEXPECTED_OPEN = 17, 
                   TOKEN_POST_SUB_TIME_CLOSE = 18;

  @override
  final List<String> ruleNames = [
    'lrcFile', 'idSection', 'timeSection', 'idLine', 'idValue', 'wordLevelTimeLine', 
    'lineLevelTimeLine', 'emptyContentTimeLine', 'timeTag', 'lyrics1', 'lyrics2', 
    'lyrics3', 'subtimeTag', 'lyrics'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, "']'", null, null, "'<'", "'>'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "NEWLINE", "TAG_OPEN", "TAG_CLOSE", "COLON", "DOT", "ID_KEY", 
      "ID_VALUE", "TIME_NUM", "LYRICS_TEXT", "SPACE", "SUB_TIME_TAG_OPEN", 
      "SUB_TIME_TAG_CLOSE", "ROOT_WS", "ID_TAG_CLOSE", "STD_TIME_COLON", 
      "STD_TIME_DOT", "WORD_TIME_UNEXPECTED_OPEN", "POST_SUB_TIME_CLOSE"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'LRCMixedParser.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  LRCMixedParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  LrcFileContext lrcFile() {
    dynamic _localctx = LrcFileContext(context, state);
    enterRule(_localctx, 0, RULE_lrcFile);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 31;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 28;
        match(TOKEN_NEWLINE);
        state = 33;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 35;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
      case 1:
        state = 34;
        idSection();
        break;
      }
      state = 38;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_TAG_OPEN || _la == TOKEN_SPACE) {
        state = 37;
        timeSection();
      }

      state = 40;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdSectionContext idSection() {
    dynamic _localctx = IdSectionContext(context, state);
    enterRule(_localctx, 2, RULE_idSection);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 49; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 42;
          idLine();
          state = 46;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 43;
            match(TOKEN_NEWLINE);
            state = 48;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 51; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 4, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TimeSectionContext timeSection() {
    dynamic _localctx = TimeSectionContext(context, state);
    enterRule(_localctx, 4, RULE_timeSection);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 74; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 74;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
        case 1:
          state = 53;
          wordLevelTimeLine();
          state = 57;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 54;
            match(TOKEN_NEWLINE);
            state = 59;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          break;
        case 2:
          state = 60;
          lineLevelTimeLine();
          state = 64;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 61;
            match(TOKEN_NEWLINE);
            state = 66;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          break;
        case 3:
          state = 67;
          emptyContentTimeLine();
          state = 71;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 68;
            match(TOKEN_NEWLINE);
            state = 73;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          break;
        }
        state = 76; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_TAG_OPEN || _la == TOKEN_SPACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdLineContext idLine() {
    dynamic _localctx = IdLineContext(context, state);
    enterRule(_localctx, 6, RULE_idLine);
    try {
      enterOuterAlt(_localctx, 1);
      state = 78;
      match(TOKEN_TAG_OPEN);
      state = 79;
      _localctx.key = match(TOKEN_ID_KEY);
      state = 80;
      match(TOKEN_COLON);
      state = 81;
      idValue();
      state = 82;
      match(TOKEN_TAG_CLOSE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdValueContext idValue() {
    dynamic _localctx = IdValueContext(context, state);
    enterRule(_localctx, 8, RULE_idValue);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 87;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 84;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_TAG_CLOSE || _la == TOKEN_ID_VALUE)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          } 
        }
        state = 89;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WordLevelTimeLineContext wordLevelTimeLine() {
    dynamic _localctx = WordLevelTimeLineContext(context, state);
    enterRule(_localctx, 10, RULE_wordLevelTimeLine);
    int _la;
    try {
      int _alt;
      state = 117;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 14, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 90;
        timeTag();
        state = 94;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SPACE) {
          state = 91;
          match(TOKEN_SPACE);
          state = 96;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 97;
        subtimeTag();
        state = 101; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 98;
            lyrics();
            state = 99;
            subtimeTag();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 103; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 105;
        lyrics();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 107;
        timeTag();
        state = 111;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SPACE) {
          state = 108;
          match(TOKEN_SPACE);
          state = 113;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 114;
        subtimeTag();
        state = 115;
        lyrics();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LineLevelTimeLineContext lineLevelTimeLine() {
    dynamic _localctx = LineLevelTimeLineContext(context, state);
    enterRule(_localctx, 12, RULE_lineLevelTimeLine);
    int _la;
    try {
      int _alt;
      state = 155;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 21, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 122;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SPACE) {
          state = 119;
          match(TOKEN_SPACE);
          state = 124;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 125;
        timeTag();
        state = 127; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 126;
            lyrics1();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 129; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 16, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 134;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SPACE) {
          state = 131;
          match(TOKEN_SPACE);
          state = 136;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 137;
        timeTag();
        state = 145; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 141;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_SPACE) {
              state = 138;
              match(TOKEN_SPACE);
              state = 143;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 144;
            timeTag();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 147; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 152;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 149;
            lyrics2(); 
          }
          state = 154;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EmptyContentTimeLineContext emptyContentTimeLine() {
    dynamic _localctx = EmptyContentTimeLineContext(context, state);
    enterRule(_localctx, 14, RULE_emptyContentTimeLine);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 160;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_SPACE) {
        state = 157;
        match(TOKEN_SPACE);
        state = 162;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 163;
      timeTag();
      state = 164;
      lyrics3();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TimeTagContext timeTag() {
    dynamic _localctx = TimeTagContext(context, state);
    enterRule(_localctx, 16, RULE_timeTag);
    try {
      enterOuterAlt(_localctx, 1);
      state = 166;
      match(TOKEN_TAG_OPEN);
      state = 167;
      _localctx.min = match(TOKEN_TIME_NUM);
      state = 168;
      match(TOKEN_COLON);
      state = 169;
      _localctx.sec = match(TOKEN_TIME_NUM);
      state = 170;
      match(TOKEN_DOT);
      state = 171;
      _localctx.ms = match(TOKEN_TIME_NUM);
      state = 172;
      match(TOKEN_TAG_CLOSE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Lyrics1Context lyrics1() {
    dynamic _localctx = Lyrics1Context(context, state);
    enterRule(_localctx, 18, RULE_lyrics1);
    int _la;
    try {
      int _alt;
      state = 193;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_SPACE:
        enterOuterAlt(_localctx, 1);
        state = 175; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 174;
          match(TOKEN_SPACE);
          state = 177; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SPACE);
        state = 179;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2572) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 183;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 180;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3596) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 185;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        }
        break;
      case TOKEN_TAG_OPEN:
      case TOKEN_TAG_CLOSE:
      case TOKEN_LYRICS_TEXT:
      case TOKEN_SUB_TIME_TAG_OPEN:
        enterOuterAlt(_localctx, 2);
        state = 186;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2572) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 190;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 187;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3596) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 192;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        }
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Lyrics2Context lyrics2() {
    dynamic _localctx = Lyrics2Context(context, state);
    enterRule(_localctx, 20, RULE_lyrics2);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 196; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 195;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 7996) != 0))) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 198; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Lyrics3Context lyrics3() {
    dynamic _localctx = Lyrics3Context(context, state);
    enterRule(_localctx, 22, RULE_lyrics3);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 203;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 200;
          match(TOKEN_SPACE); 
        }
        state = 205;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SubtimeTagContext subtimeTag() {
    dynamic _localctx = SubtimeTagContext(context, state);
    enterRule(_localctx, 24, RULE_subtimeTag);
    try {
      enterOuterAlt(_localctx, 1);
      state = 206;
      match(TOKEN_SUB_TIME_TAG_OPEN);
      state = 207;
      _localctx.min = match(TOKEN_TIME_NUM);
      state = 208;
      match(TOKEN_COLON);
      state = 209;
      _localctx.sec = match(TOKEN_TIME_NUM);
      state = 210;
      match(TOKEN_DOT);
      state = 211;
      _localctx.ms = match(TOKEN_TIME_NUM);
      state = 212;
      match(TOKEN_SUB_TIME_TAG_CLOSE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LyricsContext lyrics() {
    dynamic _localctx = LyricsContext(context, state);
    enterRule(_localctx, 26, RULE_lyrics);
    int _la;
    try {
      int _alt;
      state = 473;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 79, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 217;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 29, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 214;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 5948) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 219;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 29, context);
        }
        state = 223;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 220;
            match(TOKEN_SUB_TIME_TAG_OPEN); 
          }
          state = 225;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 229;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 226;
          match(TOKEN_LYRICS_TEXT);
          state = 231;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 233; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 232;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 235; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 238; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 237;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4656) != 0))) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 240; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4656) != 0));
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 245;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 242;
          match(TOKEN_LYRICS_TEXT);
          state = 247;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 249; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 248;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 251; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 253;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4912) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 257;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 254;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6944) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 259;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 263;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 260;
          match(TOKEN_LYRICS_TEXT);
          state = 265;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 267; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 266;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 269; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 271;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 278;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 272;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 274; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 273;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 276; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 39, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 283;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 280;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6704) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 285;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
        }
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 289;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 286;
          match(TOKEN_LYRICS_TEXT);
          state = 291;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 293; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 292;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 295; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 297;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 304;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 298;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 300; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 299;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 302; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 44, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 315;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 306;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 307;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 308;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 309;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 311; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 310;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 313; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 320;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 48, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 317;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6928) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 322;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 48, context);
        }
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 326;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 323;
          match(TOKEN_LYRICS_TEXT);
          state = 328;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 330; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 329;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 332; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 334;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 341;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 335;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 337; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 336;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 339; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 352;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 343;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 344;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 345;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 346;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 348; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 347;
            match(TOKEN_COLON);
            state = 350; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_COLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 360;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 354;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_DOT:
          state = 356; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 355;
              match(TOKEN_DOT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 358; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 365;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 57, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 362;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6704) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 367;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 57, context);
        }
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 371;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 368;
          match(TOKEN_LYRICS_TEXT);
          state = 373;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 375; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 374;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 377; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 379;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 386;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 380;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 382; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 381;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 384; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 60, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 397;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 388;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 389;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 390;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 391;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 393; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 392;
            match(TOKEN_COLON);
            state = 395; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_COLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 405;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 399;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_DOT:
          state = 401; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 400;
              match(TOKEN_DOT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 403; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 64, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 408; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 407;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2864) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 410; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 66, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 415;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 67, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 412;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2864) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 417;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 67, context);
        }
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 421;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 418;
          match(TOKEN_LYRICS_TEXT);
          state = 423;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 425; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 424;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 427; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 429;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 436;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 430;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 432; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 431;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 434; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 70, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 447;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 438;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 439;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 440;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 441;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 443; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 442;
            match(TOKEN_COLON);
            state = 445; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_COLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 455;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 449;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_DOT:
          state = 451; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 450;
              match(TOKEN_DOT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 453; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 74, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 458; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 457;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2864) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 460; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 76, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 463; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 462;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2864) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 465; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 77, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 470;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 467;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6704) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 472;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,18,476,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,
      0,5,0,30,8,0,10,0,12,0,33,9,0,1,0,3,0,36,8,0,1,0,3,0,39,8,0,1,0,1,
      0,1,1,1,1,5,1,45,8,1,10,1,12,1,48,9,1,4,1,50,8,1,11,1,12,1,51,1,2,
      1,2,5,2,56,8,2,10,2,12,2,59,9,2,1,2,1,2,5,2,63,8,2,10,2,12,2,66,9,
      2,1,2,1,2,5,2,70,8,2,10,2,12,2,73,9,2,4,2,75,8,2,11,2,12,2,76,1,3,
      1,3,1,3,1,3,1,3,1,3,1,4,5,4,86,8,4,10,4,12,4,89,9,4,1,5,1,5,5,5,93,
      8,5,10,5,12,5,96,9,5,1,5,1,5,1,5,1,5,4,5,102,8,5,11,5,12,5,103,1,5,
      1,5,1,5,1,5,5,5,110,8,5,10,5,12,5,113,9,5,1,5,1,5,1,5,3,5,118,8,5,
      1,6,5,6,121,8,6,10,6,12,6,124,9,6,1,6,1,6,4,6,128,8,6,11,6,12,6,129,
      1,6,5,6,133,8,6,10,6,12,6,136,9,6,1,6,1,6,5,6,140,8,6,10,6,12,6,143,
      9,6,1,6,4,6,146,8,6,11,6,12,6,147,1,6,5,6,151,8,6,10,6,12,6,154,9,
      6,3,6,156,8,6,1,7,5,7,159,8,7,10,7,12,7,162,9,7,1,7,1,7,1,7,1,8,1,
      8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,4,9,176,8,9,11,9,12,9,177,1,9,1,9,5,
      9,182,8,9,10,9,12,9,185,9,9,1,9,1,9,5,9,189,8,9,10,9,12,9,192,9,9,
      3,9,194,8,9,1,10,4,10,197,8,10,11,10,12,10,198,1,11,5,11,202,8,11,
      10,11,12,11,205,9,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,13,
      5,13,216,8,13,10,13,12,13,219,9,13,1,13,5,13,222,8,13,10,13,12,13,
      225,9,13,1,13,5,13,228,8,13,10,13,12,13,231,9,13,1,13,4,13,234,8,13,
      11,13,12,13,235,1,13,4,13,239,8,13,11,13,12,13,240,1,13,5,13,244,8,
      13,10,13,12,13,247,9,13,1,13,4,13,250,8,13,11,13,12,13,251,1,13,1,
      13,5,13,256,8,13,10,13,12,13,259,9,13,1,13,5,13,262,8,13,10,13,12,
      13,265,9,13,1,13,4,13,268,8,13,11,13,12,13,269,1,13,1,13,1,13,4,13,
      275,8,13,11,13,12,13,276,3,13,279,8,13,1,13,5,13,282,8,13,10,13,12,
      13,285,9,13,1,13,5,13,288,8,13,10,13,12,13,291,9,13,1,13,4,13,294,
      8,13,11,13,12,13,295,1,13,1,13,1,13,4,13,301,8,13,11,13,12,13,302,
      3,13,305,8,13,1,13,1,13,1,13,1,13,1,13,4,13,312,8,13,11,13,12,13,313,
      3,13,316,8,13,1,13,5,13,319,8,13,10,13,12,13,322,9,13,1,13,5,13,325,
      8,13,10,13,12,13,328,9,13,1,13,4,13,331,8,13,11,13,12,13,332,1,13,
      1,13,1,13,4,13,338,8,13,11,13,12,13,339,3,13,342,8,13,1,13,1,13,1,
      13,1,13,1,13,4,13,349,8,13,11,13,12,13,350,3,13,353,8,13,1,13,1,13,
      4,13,357,8,13,11,13,12,13,358,3,13,361,8,13,1,13,5,13,364,8,13,10,
      13,12,13,367,9,13,1,13,5,13,370,8,13,10,13,12,13,373,9,13,1,13,4,13,
      376,8,13,11,13,12,13,377,1,13,1,13,1,13,4,13,383,8,13,11,13,12,13,
      384,3,13,387,8,13,1,13,1,13,1,13,1,13,1,13,4,13,394,8,13,11,13,12,
      13,395,3,13,398,8,13,1,13,1,13,4,13,402,8,13,11,13,12,13,403,3,13,
      406,8,13,1,13,4,13,409,8,13,11,13,12,13,410,1,13,5,13,414,8,13,10,
      13,12,13,417,9,13,1,13,5,13,420,8,13,10,13,12,13,423,9,13,1,13,4,13,
      426,8,13,11,13,12,13,427,1,13,1,13,1,13,4,13,433,8,13,11,13,12,13,
      434,3,13,437,8,13,1,13,1,13,1,13,1,13,1,13,4,13,444,8,13,11,13,12,
      13,445,3,13,448,8,13,1,13,1,13,4,13,452,8,13,11,13,12,13,453,3,13,
      456,8,13,1,13,4,13,459,8,13,11,13,12,13,460,1,13,4,13,464,8,13,11,
      13,12,13,465,1,13,5,13,469,8,13,10,13,12,13,472,9,13,3,13,474,8,13,
      1,13,0,0,14,0,2,4,6,8,10,12,14,16,18,20,22,24,26,0,12,2,0,3,3,7,7,
      3,0,2,3,9,9,11,11,2,0,2,3,9,11,2,0,2,5,8,12,3,0,2,5,8,10,12,12,3,0,
      4,5,9,9,12,12,3,0,4,5,8,9,12,12,3,0,5,5,8,9,11,12,3,0,5,5,8,9,12,12,
      3,0,4,5,9,9,11,12,3,0,4,4,8,9,11,12,3,0,4,5,8,9,11,11,560,0,31,1,0,
      0,0,2,49,1,0,0,0,4,74,1,0,0,0,6,78,1,0,0,0,8,87,1,0,0,0,10,117,1,0,
      0,0,12,155,1,0,0,0,14,160,1,0,0,0,16,166,1,0,0,0,18,193,1,0,0,0,20,
      196,1,0,0,0,22,203,1,0,0,0,24,206,1,0,0,0,26,473,1,0,0,0,28,30,5,1,
      0,0,29,28,1,0,0,0,30,33,1,0,0,0,31,29,1,0,0,0,31,32,1,0,0,0,32,35,
      1,0,0,0,33,31,1,0,0,0,34,36,3,2,1,0,35,34,1,0,0,0,35,36,1,0,0,0,36,
      38,1,0,0,0,37,39,3,4,2,0,38,37,1,0,0,0,38,39,1,0,0,0,39,40,1,0,0,0,
      40,41,5,0,0,1,41,1,1,0,0,0,42,46,3,6,3,0,43,45,5,1,0,0,44,43,1,0,0,
      0,45,48,1,0,0,0,46,44,1,0,0,0,46,47,1,0,0,0,47,50,1,0,0,0,48,46,1,
      0,0,0,49,42,1,0,0,0,50,51,1,0,0,0,51,49,1,0,0,0,51,52,1,0,0,0,52,3,
      1,0,0,0,53,57,3,10,5,0,54,56,5,1,0,0,55,54,1,0,0,0,56,59,1,0,0,0,57,
      55,1,0,0,0,57,58,1,0,0,0,58,75,1,0,0,0,59,57,1,0,0,0,60,64,3,12,6,
      0,61,63,5,1,0,0,62,61,1,0,0,0,63,66,1,0,0,0,64,62,1,0,0,0,64,65,1,
      0,0,0,65,75,1,0,0,0,66,64,1,0,0,0,67,71,3,14,7,0,68,70,5,1,0,0,69,
      68,1,0,0,0,70,73,1,0,0,0,71,69,1,0,0,0,71,72,1,0,0,0,72,75,1,0,0,0,
      73,71,1,0,0,0,74,53,1,0,0,0,74,60,1,0,0,0,74,67,1,0,0,0,75,76,1,0,
      0,0,76,74,1,0,0,0,76,77,1,0,0,0,77,5,1,0,0,0,78,79,5,2,0,0,79,80,5,
      6,0,0,80,81,5,4,0,0,81,82,3,8,4,0,82,83,5,3,0,0,83,7,1,0,0,0,84,86,
      7,0,0,0,85,84,1,0,0,0,86,89,1,0,0,0,87,85,1,0,0,0,87,88,1,0,0,0,88,
      9,1,0,0,0,89,87,1,0,0,0,90,94,3,16,8,0,91,93,5,10,0,0,92,91,1,0,0,
      0,93,96,1,0,0,0,94,92,1,0,0,0,94,95,1,0,0,0,95,97,1,0,0,0,96,94,1,
      0,0,0,97,101,3,24,12,0,98,99,3,26,13,0,99,100,3,24,12,0,100,102,1,
      0,0,0,101,98,1,0,0,0,102,103,1,0,0,0,103,101,1,0,0,0,103,104,1,0,0,
      0,104,105,1,0,0,0,105,106,3,26,13,0,106,118,1,0,0,0,107,111,3,16,8,
      0,108,110,5,10,0,0,109,108,1,0,0,0,110,113,1,0,0,0,111,109,1,0,0,0,
      111,112,1,0,0,0,112,114,1,0,0,0,113,111,1,0,0,0,114,115,3,24,12,0,
      115,116,3,26,13,0,116,118,1,0,0,0,117,90,1,0,0,0,117,107,1,0,0,0,118,
      11,1,0,0,0,119,121,5,10,0,0,120,119,1,0,0,0,121,124,1,0,0,0,122,120,
      1,0,0,0,122,123,1,0,0,0,123,125,1,0,0,0,124,122,1,0,0,0,125,127,3,
      16,8,0,126,128,3,18,9,0,127,126,1,0,0,0,128,129,1,0,0,0,129,127,1,
      0,0,0,129,130,1,0,0,0,130,156,1,0,0,0,131,133,5,10,0,0,132,131,1,0,
      0,0,133,136,1,0,0,0,134,132,1,0,0,0,134,135,1,0,0,0,135,137,1,0,0,
      0,136,134,1,0,0,0,137,145,3,16,8,0,138,140,5,10,0,0,139,138,1,0,0,
      0,140,143,1,0,0,0,141,139,1,0,0,0,141,142,1,0,0,0,142,144,1,0,0,0,
      143,141,1,0,0,0,144,146,3,16,8,0,145,141,1,0,0,0,146,147,1,0,0,0,147,
      145,1,0,0,0,147,148,1,0,0,0,148,152,1,0,0,0,149,151,3,20,10,0,150,
      149,1,0,0,0,151,154,1,0,0,0,152,150,1,0,0,0,152,153,1,0,0,0,153,156,
      1,0,0,0,154,152,1,0,0,0,155,122,1,0,0,0,155,134,1,0,0,0,156,13,1,0,
      0,0,157,159,5,10,0,0,158,157,1,0,0,0,159,162,1,0,0,0,160,158,1,0,0,
      0,160,161,1,0,0,0,161,163,1,0,0,0,162,160,1,0,0,0,163,164,3,16,8,0,
      164,165,3,22,11,0,165,15,1,0,0,0,166,167,5,2,0,0,167,168,5,8,0,0,168,
      169,5,4,0,0,169,170,5,8,0,0,170,171,5,5,0,0,171,172,5,8,0,0,172,173,
      5,3,0,0,173,17,1,0,0,0,174,176,5,10,0,0,175,174,1,0,0,0,176,177,1,
      0,0,0,177,175,1,0,0,0,177,178,1,0,0,0,178,179,1,0,0,0,179,183,7,1,
      0,0,180,182,7,2,0,0,181,180,1,0,0,0,182,185,1,0,0,0,183,181,1,0,0,
      0,183,184,1,0,0,0,184,194,1,0,0,0,185,183,1,0,0,0,186,190,7,1,0,0,
      187,189,7,2,0,0,188,187,1,0,0,0,189,192,1,0,0,0,190,188,1,0,0,0,190,
      191,1,0,0,0,191,194,1,0,0,0,192,190,1,0,0,0,193,175,1,0,0,0,193,186,
      1,0,0,0,194,19,1,0,0,0,195,197,7,3,0,0,196,195,1,0,0,0,197,198,1,0,
      0,0,198,196,1,0,0,0,198,199,1,0,0,0,199,21,1,0,0,0,200,202,5,10,0,
      0,201,200,1,0,0,0,202,205,1,0,0,0,203,201,1,0,0,0,203,204,1,0,0,0,
      204,23,1,0,0,0,205,203,1,0,0,0,206,207,5,11,0,0,207,208,5,8,0,0,208,
      209,5,4,0,0,209,210,5,8,0,0,210,211,5,5,0,0,211,212,5,8,0,0,212,213,
      5,12,0,0,213,25,1,0,0,0,214,216,7,4,0,0,215,214,1,0,0,0,216,219,1,
      0,0,0,217,215,1,0,0,0,217,218,1,0,0,0,218,223,1,0,0,0,219,217,1,0,
      0,0,220,222,5,11,0,0,221,220,1,0,0,0,222,225,1,0,0,0,223,221,1,0,0,
      0,223,224,1,0,0,0,224,474,1,0,0,0,225,223,1,0,0,0,226,228,5,9,0,0,
      227,226,1,0,0,0,228,231,1,0,0,0,229,227,1,0,0,0,229,230,1,0,0,0,230,
      233,1,0,0,0,231,229,1,0,0,0,232,234,5,11,0,0,233,232,1,0,0,0,234,235,
      1,0,0,0,235,233,1,0,0,0,235,236,1,0,0,0,236,238,1,0,0,0,237,239,7,
      5,0,0,238,237,1,0,0,0,239,240,1,0,0,0,240,238,1,0,0,0,240,241,1,0,
      0,0,241,474,1,0,0,0,242,244,5,9,0,0,243,242,1,0,0,0,244,247,1,0,0,
      0,245,243,1,0,0,0,245,246,1,0,0,0,246,249,1,0,0,0,247,245,1,0,0,0,
      248,250,5,11,0,0,249,248,1,0,0,0,250,251,1,0,0,0,251,249,1,0,0,0,251,
      252,1,0,0,0,252,253,1,0,0,0,253,257,7,6,0,0,254,256,7,7,0,0,255,254,
      1,0,0,0,256,259,1,0,0,0,257,255,1,0,0,0,257,258,1,0,0,0,258,474,1,
      0,0,0,259,257,1,0,0,0,260,262,5,9,0,0,261,260,1,0,0,0,262,265,1,0,
      0,0,263,261,1,0,0,0,263,264,1,0,0,0,264,267,1,0,0,0,265,263,1,0,0,
      0,266,268,5,11,0,0,267,266,1,0,0,0,268,269,1,0,0,0,269,267,1,0,0,0,
      269,270,1,0,0,0,270,271,1,0,0,0,271,278,7,8,0,0,272,279,5,8,0,0,273,
      275,5,4,0,0,274,273,1,0,0,0,275,276,1,0,0,0,276,274,1,0,0,0,276,277,
      1,0,0,0,277,279,1,0,0,0,278,272,1,0,0,0,278,274,1,0,0,0,279,283,1,
      0,0,0,280,282,7,9,0,0,281,280,1,0,0,0,282,285,1,0,0,0,283,281,1,0,
      0,0,283,284,1,0,0,0,284,474,1,0,0,0,285,283,1,0,0,0,286,288,5,9,0,
      0,287,286,1,0,0,0,288,291,1,0,0,0,289,287,1,0,0,0,289,290,1,0,0,0,
      290,293,1,0,0,0,291,289,1,0,0,0,292,294,5,11,0,0,293,292,1,0,0,0,294,
      295,1,0,0,0,295,293,1,0,0,0,295,296,1,0,0,0,296,297,1,0,0,0,297,304,
      7,8,0,0,298,305,5,8,0,0,299,301,5,4,0,0,300,299,1,0,0,0,301,302,1,
      0,0,0,302,300,1,0,0,0,302,303,1,0,0,0,303,305,1,0,0,0,304,298,1,0,
      0,0,304,300,1,0,0,0,305,315,1,0,0,0,306,316,5,8,0,0,307,316,5,9,0,
      0,308,316,5,12,0,0,309,316,5,5,0,0,310,312,5,4,0,0,311,310,1,0,0,0,
      312,313,1,0,0,0,313,311,1,0,0,0,313,314,1,0,0,0,314,316,1,0,0,0,315,
      306,1,0,0,0,315,307,1,0,0,0,315,308,1,0,0,0,315,309,1,0,0,0,315,311,
      1,0,0,0,316,320,1,0,0,0,317,319,7,10,0,0,318,317,1,0,0,0,319,322,1,
      0,0,0,320,318,1,0,0,0,320,321,1,0,0,0,321,474,1,0,0,0,322,320,1,0,
      0,0,323,325,5,9,0,0,324,323,1,0,0,0,325,328,1,0,0,0,326,324,1,0,0,
      0,326,327,1,0,0,0,327,330,1,0,0,0,328,326,1,0,0,0,329,331,5,11,0,0,
      330,329,1,0,0,0,331,332,1,0,0,0,332,330,1,0,0,0,332,333,1,0,0,0,333,
      334,1,0,0,0,334,341,7,8,0,0,335,342,5,8,0,0,336,338,5,4,0,0,337,336,
      1,0,0,0,338,339,1,0,0,0,339,337,1,0,0,0,339,340,1,0,0,0,340,342,1,
      0,0,0,341,335,1,0,0,0,341,337,1,0,0,0,342,352,1,0,0,0,343,353,5,8,
      0,0,344,353,5,9,0,0,345,353,5,12,0,0,346,353,5,5,0,0,347,349,5,4,0,
      0,348,347,1,0,0,0,349,350,1,0,0,0,350,348,1,0,0,0,350,351,1,0,0,0,
      351,353,1,0,0,0,352,343,1,0,0,0,352,344,1,0,0,0,352,345,1,0,0,0,352,
      346,1,0,0,0,352,348,1,0,0,0,353,360,1,0,0,0,354,361,5,8,0,0,355,357,
      5,5,0,0,356,355,1,0,0,0,357,358,1,0,0,0,358,356,1,0,0,0,358,359,1,
      0,0,0,359,361,1,0,0,0,360,354,1,0,0,0,360,356,1,0,0,0,361,365,1,0,
      0,0,362,364,7,9,0,0,363,362,1,0,0,0,364,367,1,0,0,0,365,363,1,0,0,
      0,365,366,1,0,0,0,366,474,1,0,0,0,367,365,1,0,0,0,368,370,5,9,0,0,
      369,368,1,0,0,0,370,373,1,0,0,0,371,369,1,0,0,0,371,372,1,0,0,0,372,
      375,1,0,0,0,373,371,1,0,0,0,374,376,5,11,0,0,375,374,1,0,0,0,376,377,
      1,0,0,0,377,375,1,0,0,0,377,378,1,0,0,0,378,379,1,0,0,0,379,386,7,
      8,0,0,380,387,5,8,0,0,381,383,5,4,0,0,382,381,1,0,0,0,383,384,1,0,
      0,0,384,382,1,0,0,0,384,385,1,0,0,0,385,387,1,0,0,0,386,380,1,0,0,
      0,386,382,1,0,0,0,387,397,1,0,0,0,388,398,5,8,0,0,389,398,5,9,0,0,
      390,398,5,12,0,0,391,398,5,5,0,0,392,394,5,4,0,0,393,392,1,0,0,0,394,
      395,1,0,0,0,395,393,1,0,0,0,395,396,1,0,0,0,396,398,1,0,0,0,397,388,
      1,0,0,0,397,389,1,0,0,0,397,390,1,0,0,0,397,391,1,0,0,0,397,393,1,
      0,0,0,398,405,1,0,0,0,399,406,5,8,0,0,400,402,5,5,0,0,401,400,1,0,
      0,0,402,403,1,0,0,0,403,401,1,0,0,0,403,404,1,0,0,0,404,406,1,0,0,
      0,405,399,1,0,0,0,405,401,1,0,0,0,406,408,1,0,0,0,407,409,7,11,0,0,
      408,407,1,0,0,0,409,410,1,0,0,0,410,408,1,0,0,0,410,411,1,0,0,0,411,
      415,1,0,0,0,412,414,7,11,0,0,413,412,1,0,0,0,414,417,1,0,0,0,415,413,
      1,0,0,0,415,416,1,0,0,0,416,474,1,0,0,0,417,415,1,0,0,0,418,420,5,
      9,0,0,419,418,1,0,0,0,420,423,1,0,0,0,421,419,1,0,0,0,421,422,1,0,
      0,0,422,425,1,0,0,0,423,421,1,0,0,0,424,426,5,11,0,0,425,424,1,0,0,
      0,426,427,1,0,0,0,427,425,1,0,0,0,427,428,1,0,0,0,428,429,1,0,0,0,
      429,436,7,8,0,0,430,437,5,8,0,0,431,433,5,4,0,0,432,431,1,0,0,0,433,
      434,1,0,0,0,434,432,1,0,0,0,434,435,1,0,0,0,435,437,1,0,0,0,436,430,
      1,0,0,0,436,432,1,0,0,0,437,447,1,0,0,0,438,448,5,8,0,0,439,448,5,
      9,0,0,440,448,5,12,0,0,441,448,5,5,0,0,442,444,5,4,0,0,443,442,1,0,
      0,0,444,445,1,0,0,0,445,443,1,0,0,0,445,446,1,0,0,0,446,448,1,0,0,
      0,447,438,1,0,0,0,447,439,1,0,0,0,447,440,1,0,0,0,447,441,1,0,0,0,
      447,443,1,0,0,0,448,455,1,0,0,0,449,456,5,8,0,0,450,452,5,5,0,0,451,
      450,1,0,0,0,452,453,1,0,0,0,453,451,1,0,0,0,453,454,1,0,0,0,454,456,
      1,0,0,0,455,449,1,0,0,0,455,451,1,0,0,0,456,458,1,0,0,0,457,459,7,
      11,0,0,458,457,1,0,0,0,459,460,1,0,0,0,460,458,1,0,0,0,460,461,1,0,
      0,0,461,463,1,0,0,0,462,464,7,11,0,0,463,462,1,0,0,0,464,465,1,0,0,
      0,465,463,1,0,0,0,465,466,1,0,0,0,466,470,1,0,0,0,467,469,7,9,0,0,
      468,467,1,0,0,0,469,472,1,0,0,0,470,468,1,0,0,0,470,471,1,0,0,0,471,
      474,1,0,0,0,472,470,1,0,0,0,473,217,1,0,0,0,473,229,1,0,0,0,473,245,
      1,0,0,0,473,263,1,0,0,0,473,289,1,0,0,0,473,326,1,0,0,0,473,371,1,
      0,0,0,473,421,1,0,0,0,474,27,1,0,0,0,80,31,35,38,46,51,57,64,71,74,
      76,87,94,103,111,117,122,129,134,141,147,152,155,160,177,183,190,193,
      198,203,217,223,229,235,240,245,251,257,263,269,276,278,283,289,295,
      302,304,313,315,320,326,332,339,341,350,352,358,360,365,371,377,384,
      386,395,397,403,405,410,415,421,427,434,436,445,447,453,455,460,465,
      470,473
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class LrcFileContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(LRCMixedParser.TOKEN_EOF, 0);
  List<TerminalNode> NEWLINEs() => getTokens(LRCMixedParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(LRCMixedParser.TOKEN_NEWLINE, i);
  IdSectionContext? idSection() => getRuleContext<IdSectionContext>(0);
  TimeSectionContext? timeSection() => getRuleContext<TimeSectionContext>(0);
  LrcFileContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lrcFile;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitLrcFile(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdSectionContext extends ParserRuleContext {
  List<IdLineContext> idLines() => getRuleContexts<IdLineContext>();
  IdLineContext? idLine(int i) => getRuleContext<IdLineContext>(i);
  List<TerminalNode> NEWLINEs() => getTokens(LRCMixedParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(LRCMixedParser.TOKEN_NEWLINE, i);
  IdSectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_idSection;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitIdSection(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TimeSectionContext extends ParserRuleContext {
  List<WordLevelTimeLineContext> wordLevelTimeLines() => getRuleContexts<WordLevelTimeLineContext>();
  WordLevelTimeLineContext? wordLevelTimeLine(int i) => getRuleContext<WordLevelTimeLineContext>(i);
  List<LineLevelTimeLineContext> lineLevelTimeLines() => getRuleContexts<LineLevelTimeLineContext>();
  LineLevelTimeLineContext? lineLevelTimeLine(int i) => getRuleContext<LineLevelTimeLineContext>(i);
  List<EmptyContentTimeLineContext> emptyContentTimeLines() => getRuleContexts<EmptyContentTimeLineContext>();
  EmptyContentTimeLineContext? emptyContentTimeLine(int i) => getRuleContext<EmptyContentTimeLineContext>(i);
  List<TerminalNode> NEWLINEs() => getTokens(LRCMixedParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(LRCMixedParser.TOKEN_NEWLINE, i);
  TimeSectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timeSection;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitTimeSection(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdLineContext extends ParserRuleContext {
  Token? key;
  TerminalNode? TAG_OPEN() => getToken(LRCMixedParser.TOKEN_TAG_OPEN, 0);
  TerminalNode? COLON() => getToken(LRCMixedParser.TOKEN_COLON, 0);
  IdValueContext? idValue() => getRuleContext<IdValueContext>(0);
  TerminalNode? TAG_CLOSE() => getToken(LRCMixedParser.TOKEN_TAG_CLOSE, 0);
  TerminalNode? ID_KEY() => getToken(LRCMixedParser.TOKEN_ID_KEY, 0);
  IdLineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_idLine;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitIdLine(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdValueContext extends ParserRuleContext {
  List<TerminalNode> ID_VALUEs() => getTokens(LRCMixedParser.TOKEN_ID_VALUE);
  TerminalNode? ID_VALUE(int i) => getToken(LRCMixedParser.TOKEN_ID_VALUE, i);
  List<TerminalNode> TAG_CLOSEs() => getTokens(LRCMixedParser.TOKEN_TAG_CLOSE);
  TerminalNode? TAG_CLOSE(int i) => getToken(LRCMixedParser.TOKEN_TAG_CLOSE, i);
  IdValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_idValue;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitIdValue(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class WordLevelTimeLineContext extends ParserRuleContext {
  TimeTagContext? timeTag() => getRuleContext<TimeTagContext>(0);
  List<SubtimeTagContext> subtimeTags() => getRuleContexts<SubtimeTagContext>();
  SubtimeTagContext? subtimeTag(int i) => getRuleContext<SubtimeTagContext>(i);
  List<LyricsContext> lyricss() => getRuleContexts<LyricsContext>();
  LyricsContext? lyrics(int i) => getRuleContext<LyricsContext>(i);
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  WordLevelTimeLineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_wordLevelTimeLine;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitWordLevelTimeLine(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LineLevelTimeLineContext extends ParserRuleContext {
  List<TimeTagContext> timeTags() => getRuleContexts<TimeTagContext>();
  TimeTagContext? timeTag(int i) => getRuleContext<TimeTagContext>(i);
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  List<Lyrics1Context> lyrics1s() => getRuleContexts<Lyrics1Context>();
  Lyrics1Context? lyrics1(int i) => getRuleContext<Lyrics1Context>(i);
  List<Lyrics2Context> lyrics2s() => getRuleContexts<Lyrics2Context>();
  Lyrics2Context? lyrics2(int i) => getRuleContext<Lyrics2Context>(i);
  LineLevelTimeLineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lineLevelTimeLine;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitLineLevelTimeLine(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class EmptyContentTimeLineContext extends ParserRuleContext {
  TimeTagContext? timeTag() => getRuleContext<TimeTagContext>(0);
  Lyrics3Context? lyrics3() => getRuleContext<Lyrics3Context>(0);
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  EmptyContentTimeLineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_emptyContentTimeLine;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitEmptyContentTimeLine(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TimeTagContext extends ParserRuleContext {
  Token? min;
  Token? sec;
  Token? ms;
  TerminalNode? TAG_OPEN() => getToken(LRCMixedParser.TOKEN_TAG_OPEN, 0);
  TerminalNode? COLON() => getToken(LRCMixedParser.TOKEN_COLON, 0);
  TerminalNode? DOT() => getToken(LRCMixedParser.TOKEN_DOT, 0);
  TerminalNode? TAG_CLOSE() => getToken(LRCMixedParser.TOKEN_TAG_CLOSE, 0);
  List<TerminalNode> TIME_NUMs() => getTokens(LRCMixedParser.TOKEN_TIME_NUM);
  TerminalNode? TIME_NUM(int i) => getToken(LRCMixedParser.TOKEN_TIME_NUM, i);
  TimeTagContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_timeTag;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitTimeTag(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Lyrics1Context extends ParserRuleContext {
  List<TerminalNode> TAG_OPENs() => getTokens(LRCMixedParser.TOKEN_TAG_OPEN);
  TerminalNode? TAG_OPEN(int i) => getToken(LRCMixedParser.TOKEN_TAG_OPEN, i);
  List<TerminalNode> TAG_CLOSEs() => getTokens(LRCMixedParser.TOKEN_TAG_CLOSE);
  TerminalNode? TAG_CLOSE(int i) => getToken(LRCMixedParser.TOKEN_TAG_CLOSE, i);
  List<TerminalNode> LYRICS_TEXTs() => getTokens(LRCMixedParser.TOKEN_LYRICS_TEXT);
  TerminalNode? LYRICS_TEXT(int i) => getToken(LRCMixedParser.TOKEN_LYRICS_TEXT, i);
  List<TerminalNode> SUB_TIME_TAG_OPENs() => getTokens(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN);
  TerminalNode? SUB_TIME_TAG_OPEN(int i) => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN, i);
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  Lyrics1Context([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lyrics1;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitLyrics1(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Lyrics2Context extends ParserRuleContext {
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  List<TerminalNode> TAG_OPENs() => getTokens(LRCMixedParser.TOKEN_TAG_OPEN);
  TerminalNode? TAG_OPEN(int i) => getToken(LRCMixedParser.TOKEN_TAG_OPEN, i);
  List<TerminalNode> TAG_CLOSEs() => getTokens(LRCMixedParser.TOKEN_TAG_CLOSE);
  TerminalNode? TAG_CLOSE(int i) => getToken(LRCMixedParser.TOKEN_TAG_CLOSE, i);
  List<TerminalNode> LYRICS_TEXTs() => getTokens(LRCMixedParser.TOKEN_LYRICS_TEXT);
  TerminalNode? LYRICS_TEXT(int i) => getToken(LRCMixedParser.TOKEN_LYRICS_TEXT, i);
  List<TerminalNode> SUB_TIME_TAG_OPENs() => getTokens(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN);
  TerminalNode? SUB_TIME_TAG_OPEN(int i) => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN, i);
  List<TerminalNode> SUB_TIME_TAG_CLOSEs() => getTokens(LRCMixedParser.TOKEN_SUB_TIME_TAG_CLOSE);
  TerminalNode? SUB_TIME_TAG_CLOSE(int i) => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_CLOSE, i);
  List<TerminalNode> TIME_NUMs() => getTokens(LRCMixedParser.TOKEN_TIME_NUM);
  TerminalNode? TIME_NUM(int i) => getToken(LRCMixedParser.TOKEN_TIME_NUM, i);
  List<TerminalNode> COLONs() => getTokens(LRCMixedParser.TOKEN_COLON);
  TerminalNode? COLON(int i) => getToken(LRCMixedParser.TOKEN_COLON, i);
  List<TerminalNode> DOTs() => getTokens(LRCMixedParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(LRCMixedParser.TOKEN_DOT, i);
  Lyrics2Context([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lyrics2;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitLyrics2(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Lyrics3Context extends ParserRuleContext {
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  Lyrics3Context([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lyrics3;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitLyrics3(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SubtimeTagContext extends ParserRuleContext {
  Token? min;
  Token? sec;
  Token? ms;
  TerminalNode? SUB_TIME_TAG_OPEN() => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN, 0);
  TerminalNode? COLON() => getToken(LRCMixedParser.TOKEN_COLON, 0);
  TerminalNode? DOT() => getToken(LRCMixedParser.TOKEN_DOT, 0);
  TerminalNode? SUB_TIME_TAG_CLOSE() => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_CLOSE, 0);
  List<TerminalNode> TIME_NUMs() => getTokens(LRCMixedParser.TOKEN_TIME_NUM);
  TerminalNode? TIME_NUM(int i) => getToken(LRCMixedParser.TOKEN_TIME_NUM, i);
  SubtimeTagContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_subtimeTag;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitSubtimeTag(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LyricsContext extends ParserRuleContext {
  List<TerminalNode> SUB_TIME_TAG_OPENs() => getTokens(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN);
  TerminalNode? SUB_TIME_TAG_OPEN(int i) => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_OPEN, i);
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  List<TerminalNode> TAG_OPENs() => getTokens(LRCMixedParser.TOKEN_TAG_OPEN);
  TerminalNode? TAG_OPEN(int i) => getToken(LRCMixedParser.TOKEN_TAG_OPEN, i);
  List<TerminalNode> TAG_CLOSEs() => getTokens(LRCMixedParser.TOKEN_TAG_CLOSE);
  TerminalNode? TAG_CLOSE(int i) => getToken(LRCMixedParser.TOKEN_TAG_CLOSE, i);
  List<TerminalNode> LYRICS_TEXTs() => getTokens(LRCMixedParser.TOKEN_LYRICS_TEXT);
  TerminalNode? LYRICS_TEXT(int i) => getToken(LRCMixedParser.TOKEN_LYRICS_TEXT, i);
  List<TerminalNode> SUB_TIME_TAG_CLOSEs() => getTokens(LRCMixedParser.TOKEN_SUB_TIME_TAG_CLOSE);
  TerminalNode? SUB_TIME_TAG_CLOSE(int i) => getToken(LRCMixedParser.TOKEN_SUB_TIME_TAG_CLOSE, i);
  List<TerminalNode> TIME_NUMs() => getTokens(LRCMixedParser.TOKEN_TIME_NUM);
  TerminalNode? TIME_NUM(int i) => getToken(LRCMixedParser.TOKEN_TIME_NUM, i);
  List<TerminalNode> COLONs() => getTokens(LRCMixedParser.TOKEN_COLON);
  TerminalNode? COLON(int i) => getToken(LRCMixedParser.TOKEN_COLON, i);
  List<TerminalNode> DOTs() => getTokens(LRCMixedParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(LRCMixedParser.TOKEN_DOT, i);
  LyricsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lyrics;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LRCMixedParserVisitor<T>) {
     return visitor.visitLyrics(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

