
10 REM loader by bin2tap1.3
  20 BORDER VAL "0": PAPER VAL "0": INK VAL "7"
  30  CLEAR VAL "33152"
  40  POKE VAL "33153", CODE "o"
  42  CLS : PRINT AT  5,06; "My Music"
  44  print AT  8,08;""
  46  print AT 10,08; "by Your Name"
  47  print AT 11,08; "          "
  48  print AT 12,08; "          "
  50  LOAD "" CODE
  60  RANDOMIZE USR VAL "33155"
  70  REM LOAD "" SCREEN$
