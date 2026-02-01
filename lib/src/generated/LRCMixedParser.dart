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
      state = 103;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 98;
          lyrics();
          state = 99;
          subtimeTag(); 
        }
        state = 105;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
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
      state = 142;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 19, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 109;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SPACE) {
          state = 106;
          match(TOKEN_SPACE);
          state = 111;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 112;
        timeTag();
        state = 114; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 113;
            lyrics1();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 116; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 121;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SPACE) {
          state = 118;
          match(TOKEN_SPACE);
          state = 123;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 124;
        timeTag();
        state = 132; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 128;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_SPACE) {
              state = 125;
              match(TOKEN_SPACE);
              state = 130;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 131;
            timeTag();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 134; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 17, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 139;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 136;
            lyrics2(); 
          }
          state = 141;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
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
      state = 147;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_SPACE) {
        state = 144;
        match(TOKEN_SPACE);
        state = 149;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 150;
      timeTag();
      state = 151;
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
      state = 153;
      match(TOKEN_TAG_OPEN);
      state = 154;
      _localctx.min = match(TOKEN_TIME_NUM);
      state = 155;
      match(TOKEN_COLON);
      state = 156;
      _localctx.sec = match(TOKEN_TIME_NUM);
      state = 157;
      match(TOKEN_DOT);
      state = 158;
      _localctx.ms = match(TOKEN_TIME_NUM);
      state = 159;
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
      state = 180;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_SPACE:
        enterOuterAlt(_localctx, 1);
        state = 162; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 161;
          match(TOKEN_SPACE);
          state = 164; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SPACE);
        state = 166;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2572) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 170;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 167;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3596) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 172;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        }
        break;
      case TOKEN_TAG_OPEN:
      case TOKEN_TAG_CLOSE:
      case TOKEN_LYRICS_TEXT:
      case TOKEN_SUB_TIME_TAG_OPEN:
        enterOuterAlt(_localctx, 2);
        state = 173;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2572) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 177;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 174;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3596) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 179;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
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
      state = 183; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 182;
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
        state = 185; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
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
      state = 190;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 26, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 187;
          match(TOKEN_SPACE); 
        }
        state = 192;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 26, context);
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
      state = 193;
      match(TOKEN_SUB_TIME_TAG_OPEN);
      state = 194;
      _localctx.min = match(TOKEN_TIME_NUM);
      state = 195;
      match(TOKEN_COLON);
      state = 196;
      _localctx.sec = match(TOKEN_TIME_NUM);
      state = 197;
      match(TOKEN_DOT);
      state = 198;
      _localctx.ms = match(TOKEN_TIME_NUM);
      state = 199;
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
      state = 460;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 77, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 204;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 5948) != 0)) {
          state = 201;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 5948) != 0))) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 206;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 210;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 207;
            match(TOKEN_SUB_TIME_TAG_OPEN); 
          }
          state = 212;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 216;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 213;
          match(TOKEN_LYRICS_TEXT);
          state = 218;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 220; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 219;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 222; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 225; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 224;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4656) != 0))) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 227; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4656) != 0));
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 232;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 229;
          match(TOKEN_LYRICS_TEXT);
          state = 234;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 236; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 235;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 238; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 240;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4912) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 244;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 34, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 241;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6944) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 246;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 34, context);
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 250;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 247;
          match(TOKEN_LYRICS_TEXT);
          state = 252;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 254; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 253;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 256; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 258;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 265;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 259;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 261; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 260;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 263; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 270;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 39, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 267;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6704) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 272;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 39, context);
        }
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 276;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 273;
          match(TOKEN_LYRICS_TEXT);
          state = 278;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 280; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 279;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 282; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 284;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 291;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 285;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 287; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 286;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 289; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 302;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 293;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 294;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 295;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 296;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 298; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 297;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 300; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 44, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 307;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 304;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6928) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 309;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
        }
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 313;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 310;
          match(TOKEN_LYRICS_TEXT);
          state = 315;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 317; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 316;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 319; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 321;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 328;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 322;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 324; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 323;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 326; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 49, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 339;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 330;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 331;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 332;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 333;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 335; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 334;
            match(TOKEN_COLON);
            state = 337; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_COLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 347;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 341;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_DOT:
          state = 343; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 342;
              match(TOKEN_DOT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 345; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 53, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 352;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 349;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6704) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 354;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
        }
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 358;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 355;
          match(TOKEN_LYRICS_TEXT);
          state = 360;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 362; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 361;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 364; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 366;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 373;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 367;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 369; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 368;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 371; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 58, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 384;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 375;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 376;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 377;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 378;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 380; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 379;
            match(TOKEN_COLON);
            state = 382; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_COLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 392;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 386;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_DOT:
          state = 388; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 387;
              match(TOKEN_DOT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 390; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 62, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 395; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 394;
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
          state = 397; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 64, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 402;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 65, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 399;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2864) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 404;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 65, context);
        }
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 408;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_LYRICS_TEXT) {
          state = 405;
          match(TOKEN_LYRICS_TEXT);
          state = 410;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 412; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 411;
          match(TOKEN_SUB_TIME_TAG_OPEN);
          state = 414; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_SUB_TIME_TAG_OPEN);
        state = 416;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4896) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 423;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 417;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_COLON:
          state = 419; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 418;
              match(TOKEN_COLON);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 421; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 68, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 434;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 425;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_LYRICS_TEXT:
          state = 426;
          match(TOKEN_LYRICS_TEXT);
          break;
        case TOKEN_SUB_TIME_TAG_CLOSE:
          state = 427;
          match(TOKEN_SUB_TIME_TAG_CLOSE);
          break;
        case TOKEN_DOT:
          state = 428;
          match(TOKEN_DOT);
          break;
        case TOKEN_COLON:
          state = 430; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 429;
            match(TOKEN_COLON);
            state = 432; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_COLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 442;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_TIME_NUM:
          state = 436;
          match(TOKEN_TIME_NUM);
          break;
        case TOKEN_DOT:
          state = 438; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
              state = 437;
              match(TOKEN_DOT);
              break;
            default:
              throw NoViableAltException(this);
            }
            state = 440; 
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 72, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 445; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 444;
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
          state = 447; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 74, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 450; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 449;
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
          state = 452; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 75, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 457;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 76, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 454;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 6704) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            } 
          }
          state = 459;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 76, context);
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
      4,1,18,463,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,
      0,5,0,30,8,0,10,0,12,0,33,9,0,1,0,3,0,36,8,0,1,0,3,0,39,8,0,1,0,1,
      0,1,1,1,1,5,1,45,8,1,10,1,12,1,48,9,1,4,1,50,8,1,11,1,12,1,51,1,2,
      1,2,5,2,56,8,2,10,2,12,2,59,9,2,1,2,1,2,5,2,63,8,2,10,2,12,2,66,9,
      2,1,2,1,2,5,2,70,8,2,10,2,12,2,73,9,2,4,2,75,8,2,11,2,12,2,76,1,3,
      1,3,1,3,1,3,1,3,1,3,1,4,5,4,86,8,4,10,4,12,4,89,9,4,1,5,1,5,5,5,93,
      8,5,10,5,12,5,96,9,5,1,5,1,5,1,5,1,5,5,5,102,8,5,10,5,12,5,105,9,5,
      1,6,5,6,108,8,6,10,6,12,6,111,9,6,1,6,1,6,4,6,115,8,6,11,6,12,6,116,
      1,6,5,6,120,8,6,10,6,12,6,123,9,6,1,6,1,6,5,6,127,8,6,10,6,12,6,130,
      9,6,1,6,4,6,133,8,6,11,6,12,6,134,1,6,5,6,138,8,6,10,6,12,6,141,9,
      6,3,6,143,8,6,1,7,5,7,146,8,7,10,7,12,7,149,9,7,1,7,1,7,1,7,1,8,1,
      8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,4,9,163,8,9,11,9,12,9,164,1,9,1,9,5,
      9,169,8,9,10,9,12,9,172,9,9,1,9,1,9,5,9,176,8,9,10,9,12,9,179,9,9,
      3,9,181,8,9,1,10,4,10,184,8,10,11,10,12,10,185,1,11,5,11,189,8,11,
      10,11,12,11,192,9,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,13,
      5,13,203,8,13,10,13,12,13,206,9,13,1,13,5,13,209,8,13,10,13,12,13,
      212,9,13,1,13,5,13,215,8,13,10,13,12,13,218,9,13,1,13,4,13,221,8,13,
      11,13,12,13,222,1,13,4,13,226,8,13,11,13,12,13,227,1,13,5,13,231,8,
      13,10,13,12,13,234,9,13,1,13,4,13,237,8,13,11,13,12,13,238,1,13,1,
      13,5,13,243,8,13,10,13,12,13,246,9,13,1,13,5,13,249,8,13,10,13,12,
      13,252,9,13,1,13,4,13,255,8,13,11,13,12,13,256,1,13,1,13,1,13,4,13,
      262,8,13,11,13,12,13,263,3,13,266,8,13,1,13,5,13,269,8,13,10,13,12,
      13,272,9,13,1,13,5,13,275,8,13,10,13,12,13,278,9,13,1,13,4,13,281,
      8,13,11,13,12,13,282,1,13,1,13,1,13,4,13,288,8,13,11,13,12,13,289,
      3,13,292,8,13,1,13,1,13,1,13,1,13,1,13,4,13,299,8,13,11,13,12,13,300,
      3,13,303,8,13,1,13,5,13,306,8,13,10,13,12,13,309,9,13,1,13,5,13,312,
      8,13,10,13,12,13,315,9,13,1,13,4,13,318,8,13,11,13,12,13,319,1,13,
      1,13,1,13,4,13,325,8,13,11,13,12,13,326,3,13,329,8,13,1,13,1,13,1,
      13,1,13,1,13,4,13,336,8,13,11,13,12,13,337,3,13,340,8,13,1,13,1,13,
      4,13,344,8,13,11,13,12,13,345,3,13,348,8,13,1,13,5,13,351,8,13,10,
      13,12,13,354,9,13,1,13,5,13,357,8,13,10,13,12,13,360,9,13,1,13,4,13,
      363,8,13,11,13,12,13,364,1,13,1,13,1,13,4,13,370,8,13,11,13,12,13,
      371,3,13,374,8,13,1,13,1,13,1,13,1,13,1,13,4,13,381,8,13,11,13,12,
      13,382,3,13,385,8,13,1,13,1,13,4,13,389,8,13,11,13,12,13,390,3,13,
      393,8,13,1,13,4,13,396,8,13,11,13,12,13,397,1,13,5,13,401,8,13,10,
      13,12,13,404,9,13,1,13,5,13,407,8,13,10,13,12,13,410,9,13,1,13,4,13,
      413,8,13,11,13,12,13,414,1,13,1,13,1,13,4,13,420,8,13,11,13,12,13,
      421,3,13,424,8,13,1,13,1,13,1,13,1,13,1,13,4,13,431,8,13,11,13,12,
      13,432,3,13,435,8,13,1,13,1,13,4,13,439,8,13,11,13,12,13,440,3,13,
      443,8,13,1,13,4,13,446,8,13,11,13,12,13,447,1,13,4,13,451,8,13,11,
      13,12,13,452,1,13,5,13,456,8,13,10,13,12,13,459,9,13,3,13,461,8,13,
      1,13,0,0,14,0,2,4,6,8,10,12,14,16,18,20,22,24,26,0,12,2,0,3,3,7,7,
      3,0,2,3,9,9,11,11,2,0,2,3,9,11,2,0,2,5,8,12,3,0,2,5,8,10,12,12,3,0,
      4,5,9,9,12,12,3,0,4,5,8,9,12,12,3,0,5,5,8,9,11,12,3,0,5,5,8,9,12,12,
      3,0,4,5,9,9,11,12,3,0,4,4,8,9,11,12,3,0,4,5,8,9,11,11,545,0,31,1,0,
      0,0,2,49,1,0,0,0,4,74,1,0,0,0,6,78,1,0,0,0,8,87,1,0,0,0,10,90,1,0,
      0,0,12,142,1,0,0,0,14,147,1,0,0,0,16,153,1,0,0,0,18,180,1,0,0,0,20,
      183,1,0,0,0,22,190,1,0,0,0,24,193,1,0,0,0,26,460,1,0,0,0,28,30,5,1,
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
      0,0,0,97,103,3,24,12,0,98,99,3,26,13,0,99,100,3,24,12,0,100,102,1,
      0,0,0,101,98,1,0,0,0,102,105,1,0,0,0,103,101,1,0,0,0,103,104,1,0,0,
      0,104,11,1,0,0,0,105,103,1,0,0,0,106,108,5,10,0,0,107,106,1,0,0,0,
      108,111,1,0,0,0,109,107,1,0,0,0,109,110,1,0,0,0,110,112,1,0,0,0,111,
      109,1,0,0,0,112,114,3,16,8,0,113,115,3,18,9,0,114,113,1,0,0,0,115,
      116,1,0,0,0,116,114,1,0,0,0,116,117,1,0,0,0,117,143,1,0,0,0,118,120,
      5,10,0,0,119,118,1,0,0,0,120,123,1,0,0,0,121,119,1,0,0,0,121,122,1,
      0,0,0,122,124,1,0,0,0,123,121,1,0,0,0,124,132,3,16,8,0,125,127,5,10,
      0,0,126,125,1,0,0,0,127,130,1,0,0,0,128,126,1,0,0,0,128,129,1,0,0,
      0,129,131,1,0,0,0,130,128,1,0,0,0,131,133,3,16,8,0,132,128,1,0,0,0,
      133,134,1,0,0,0,134,132,1,0,0,0,134,135,1,0,0,0,135,139,1,0,0,0,136,
      138,3,20,10,0,137,136,1,0,0,0,138,141,1,0,0,0,139,137,1,0,0,0,139,
      140,1,0,0,0,140,143,1,0,0,0,141,139,1,0,0,0,142,109,1,0,0,0,142,121,
      1,0,0,0,143,13,1,0,0,0,144,146,5,10,0,0,145,144,1,0,0,0,146,149,1,
      0,0,0,147,145,1,0,0,0,147,148,1,0,0,0,148,150,1,0,0,0,149,147,1,0,
      0,0,150,151,3,16,8,0,151,152,3,22,11,0,152,15,1,0,0,0,153,154,5,2,
      0,0,154,155,5,8,0,0,155,156,5,4,0,0,156,157,5,8,0,0,157,158,5,5,0,
      0,158,159,5,8,0,0,159,160,5,3,0,0,160,17,1,0,0,0,161,163,5,10,0,0,
      162,161,1,0,0,0,163,164,1,0,0,0,164,162,1,0,0,0,164,165,1,0,0,0,165,
      166,1,0,0,0,166,170,7,1,0,0,167,169,7,2,0,0,168,167,1,0,0,0,169,172,
      1,0,0,0,170,168,1,0,0,0,170,171,1,0,0,0,171,181,1,0,0,0,172,170,1,
      0,0,0,173,177,7,1,0,0,174,176,7,2,0,0,175,174,1,0,0,0,176,179,1,0,
      0,0,177,175,1,0,0,0,177,178,1,0,0,0,178,181,1,0,0,0,179,177,1,0,0,
      0,180,162,1,0,0,0,180,173,1,0,0,0,181,19,1,0,0,0,182,184,7,3,0,0,183,
      182,1,0,0,0,184,185,1,0,0,0,185,183,1,0,0,0,185,186,1,0,0,0,186,21,
      1,0,0,0,187,189,5,10,0,0,188,187,1,0,0,0,189,192,1,0,0,0,190,188,1,
      0,0,0,190,191,1,0,0,0,191,23,1,0,0,0,192,190,1,0,0,0,193,194,5,11,
      0,0,194,195,5,8,0,0,195,196,5,4,0,0,196,197,5,8,0,0,197,198,5,5,0,
      0,198,199,5,8,0,0,199,200,5,12,0,0,200,25,1,0,0,0,201,203,7,4,0,0,
      202,201,1,0,0,0,203,206,1,0,0,0,204,202,1,0,0,0,204,205,1,0,0,0,205,
      210,1,0,0,0,206,204,1,0,0,0,207,209,5,11,0,0,208,207,1,0,0,0,209,212,
      1,0,0,0,210,208,1,0,0,0,210,211,1,0,0,0,211,461,1,0,0,0,212,210,1,
      0,0,0,213,215,5,9,0,0,214,213,1,0,0,0,215,218,1,0,0,0,216,214,1,0,
      0,0,216,217,1,0,0,0,217,220,1,0,0,0,218,216,1,0,0,0,219,221,5,11,0,
      0,220,219,1,0,0,0,221,222,1,0,0,0,222,220,1,0,0,0,222,223,1,0,0,0,
      223,225,1,0,0,0,224,226,7,5,0,0,225,224,1,0,0,0,226,227,1,0,0,0,227,
      225,1,0,0,0,227,228,1,0,0,0,228,461,1,0,0,0,229,231,5,9,0,0,230,229,
      1,0,0,0,231,234,1,0,0,0,232,230,1,0,0,0,232,233,1,0,0,0,233,236,1,
      0,0,0,234,232,1,0,0,0,235,237,5,11,0,0,236,235,1,0,0,0,237,238,1,0,
      0,0,238,236,1,0,0,0,238,239,1,0,0,0,239,240,1,0,0,0,240,244,7,6,0,
      0,241,243,7,7,0,0,242,241,1,0,0,0,243,246,1,0,0,0,244,242,1,0,0,0,
      244,245,1,0,0,0,245,461,1,0,0,0,246,244,1,0,0,0,247,249,5,9,0,0,248,
      247,1,0,0,0,249,252,1,0,0,0,250,248,1,0,0,0,250,251,1,0,0,0,251,254,
      1,0,0,0,252,250,1,0,0,0,253,255,5,11,0,0,254,253,1,0,0,0,255,256,1,
      0,0,0,256,254,1,0,0,0,256,257,1,0,0,0,257,258,1,0,0,0,258,265,7,8,
      0,0,259,266,5,8,0,0,260,262,5,4,0,0,261,260,1,0,0,0,262,263,1,0,0,
      0,263,261,1,0,0,0,263,264,1,0,0,0,264,266,1,0,0,0,265,259,1,0,0,0,
      265,261,1,0,0,0,266,270,1,0,0,0,267,269,7,9,0,0,268,267,1,0,0,0,269,
      272,1,0,0,0,270,268,1,0,0,0,270,271,1,0,0,0,271,461,1,0,0,0,272,270,
      1,0,0,0,273,275,5,9,0,0,274,273,1,0,0,0,275,278,1,0,0,0,276,274,1,
      0,0,0,276,277,1,0,0,0,277,280,1,0,0,0,278,276,1,0,0,0,279,281,5,11,
      0,0,280,279,1,0,0,0,281,282,1,0,0,0,282,280,1,0,0,0,282,283,1,0,0,
      0,283,284,1,0,0,0,284,291,7,8,0,0,285,292,5,8,0,0,286,288,5,4,0,0,
      287,286,1,0,0,0,288,289,1,0,0,0,289,287,1,0,0,0,289,290,1,0,0,0,290,
      292,1,0,0,0,291,285,1,0,0,0,291,287,1,0,0,0,292,302,1,0,0,0,293,303,
      5,8,0,0,294,303,5,9,0,0,295,303,5,12,0,0,296,303,5,5,0,0,297,299,5,
      4,0,0,298,297,1,0,0,0,299,300,1,0,0,0,300,298,1,0,0,0,300,301,1,0,
      0,0,301,303,1,0,0,0,302,293,1,0,0,0,302,294,1,0,0,0,302,295,1,0,0,
      0,302,296,1,0,0,0,302,298,1,0,0,0,303,307,1,0,0,0,304,306,7,10,0,0,
      305,304,1,0,0,0,306,309,1,0,0,0,307,305,1,0,0,0,307,308,1,0,0,0,308,
      461,1,0,0,0,309,307,1,0,0,0,310,312,5,9,0,0,311,310,1,0,0,0,312,315,
      1,0,0,0,313,311,1,0,0,0,313,314,1,0,0,0,314,317,1,0,0,0,315,313,1,
      0,0,0,316,318,5,11,0,0,317,316,1,0,0,0,318,319,1,0,0,0,319,317,1,0,
      0,0,319,320,1,0,0,0,320,321,1,0,0,0,321,328,7,8,0,0,322,329,5,8,0,
      0,323,325,5,4,0,0,324,323,1,0,0,0,325,326,1,0,0,0,326,324,1,0,0,0,
      326,327,1,0,0,0,327,329,1,0,0,0,328,322,1,0,0,0,328,324,1,0,0,0,329,
      339,1,0,0,0,330,340,5,8,0,0,331,340,5,9,0,0,332,340,5,12,0,0,333,340,
      5,5,0,0,334,336,5,4,0,0,335,334,1,0,0,0,336,337,1,0,0,0,337,335,1,
      0,0,0,337,338,1,0,0,0,338,340,1,0,0,0,339,330,1,0,0,0,339,331,1,0,
      0,0,339,332,1,0,0,0,339,333,1,0,0,0,339,335,1,0,0,0,340,347,1,0,0,
      0,341,348,5,8,0,0,342,344,5,5,0,0,343,342,1,0,0,0,344,345,1,0,0,0,
      345,343,1,0,0,0,345,346,1,0,0,0,346,348,1,0,0,0,347,341,1,0,0,0,347,
      343,1,0,0,0,348,352,1,0,0,0,349,351,7,9,0,0,350,349,1,0,0,0,351,354,
      1,0,0,0,352,350,1,0,0,0,352,353,1,0,0,0,353,461,1,0,0,0,354,352,1,
      0,0,0,355,357,5,9,0,0,356,355,1,0,0,0,357,360,1,0,0,0,358,356,1,0,
      0,0,358,359,1,0,0,0,359,362,1,0,0,0,360,358,1,0,0,0,361,363,5,11,0,
      0,362,361,1,0,0,0,363,364,1,0,0,0,364,362,1,0,0,0,364,365,1,0,0,0,
      365,366,1,0,0,0,366,373,7,8,0,0,367,374,5,8,0,0,368,370,5,4,0,0,369,
      368,1,0,0,0,370,371,1,0,0,0,371,369,1,0,0,0,371,372,1,0,0,0,372,374,
      1,0,0,0,373,367,1,0,0,0,373,369,1,0,0,0,374,384,1,0,0,0,375,385,5,
      8,0,0,376,385,5,9,0,0,377,385,5,12,0,0,378,385,5,5,0,0,379,381,5,4,
      0,0,380,379,1,0,0,0,381,382,1,0,0,0,382,380,1,0,0,0,382,383,1,0,0,
      0,383,385,1,0,0,0,384,375,1,0,0,0,384,376,1,0,0,0,384,377,1,0,0,0,
      384,378,1,0,0,0,384,380,1,0,0,0,385,392,1,0,0,0,386,393,5,8,0,0,387,
      389,5,5,0,0,388,387,1,0,0,0,389,390,1,0,0,0,390,388,1,0,0,0,390,391,
      1,0,0,0,391,393,1,0,0,0,392,386,1,0,0,0,392,388,1,0,0,0,393,395,1,
      0,0,0,394,396,7,11,0,0,395,394,1,0,0,0,396,397,1,0,0,0,397,395,1,0,
      0,0,397,398,1,0,0,0,398,402,1,0,0,0,399,401,7,11,0,0,400,399,1,0,0,
      0,401,404,1,0,0,0,402,400,1,0,0,0,402,403,1,0,0,0,403,461,1,0,0,0,
      404,402,1,0,0,0,405,407,5,9,0,0,406,405,1,0,0,0,407,410,1,0,0,0,408,
      406,1,0,0,0,408,409,1,0,0,0,409,412,1,0,0,0,410,408,1,0,0,0,411,413,
      5,11,0,0,412,411,1,0,0,0,413,414,1,0,0,0,414,412,1,0,0,0,414,415,1,
      0,0,0,415,416,1,0,0,0,416,423,7,8,0,0,417,424,5,8,0,0,418,420,5,4,
      0,0,419,418,1,0,0,0,420,421,1,0,0,0,421,419,1,0,0,0,421,422,1,0,0,
      0,422,424,1,0,0,0,423,417,1,0,0,0,423,419,1,0,0,0,424,434,1,0,0,0,
      425,435,5,8,0,0,426,435,5,9,0,0,427,435,5,12,0,0,428,435,5,5,0,0,429,
      431,5,4,0,0,430,429,1,0,0,0,431,432,1,0,0,0,432,430,1,0,0,0,432,433,
      1,0,0,0,433,435,1,0,0,0,434,425,1,0,0,0,434,426,1,0,0,0,434,427,1,
      0,0,0,434,428,1,0,0,0,434,430,1,0,0,0,435,442,1,0,0,0,436,443,5,8,
      0,0,437,439,5,5,0,0,438,437,1,0,0,0,439,440,1,0,0,0,440,438,1,0,0,
      0,440,441,1,0,0,0,441,443,1,0,0,0,442,436,1,0,0,0,442,438,1,0,0,0,
      443,445,1,0,0,0,444,446,7,11,0,0,445,444,1,0,0,0,446,447,1,0,0,0,447,
      445,1,0,0,0,447,448,1,0,0,0,448,450,1,0,0,0,449,451,7,11,0,0,450,449,
      1,0,0,0,451,452,1,0,0,0,452,450,1,0,0,0,452,453,1,0,0,0,453,457,1,
      0,0,0,454,456,7,9,0,0,455,454,1,0,0,0,456,459,1,0,0,0,457,455,1,0,
      0,0,457,458,1,0,0,0,458,461,1,0,0,0,459,457,1,0,0,0,460,204,1,0,0,
      0,460,216,1,0,0,0,460,232,1,0,0,0,460,250,1,0,0,0,460,276,1,0,0,0,
      460,313,1,0,0,0,460,358,1,0,0,0,460,408,1,0,0,0,461,27,1,0,0,0,78,
      31,35,38,46,51,57,64,71,74,76,87,94,103,109,116,121,128,134,139,142,
      147,164,170,177,180,185,190,204,210,216,222,227,232,238,244,250,256,
      263,265,270,276,282,289,291,300,302,307,313,319,326,328,337,339,345,
      347,352,358,364,371,373,382,384,390,392,397,402,408,414,421,423,432,
      434,440,442,447,452,457,460
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
  List<TerminalNode> SPACEs() => getTokens(LRCMixedParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(LRCMixedParser.TOKEN_SPACE, i);
  List<LyricsContext> lyricss() => getRuleContexts<LyricsContext>();
  LyricsContext? lyrics(int i) => getRuleContext<LyricsContext>(i);
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

