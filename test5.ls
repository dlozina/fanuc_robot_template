/PROG  TEST5
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 716;
CREATE		= DATE 19-03-20  TIME 08:48:28;
MODIFIED	= DATE 19-03-21  TIME 09:13:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 1036;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:L P[1] 250mm/sec FINE    ;
   4:L P[2] 250mm/sec FINE    ;
   5:L P[3] 100mm/sec FINE    ;
   6:L P[4] 100mm/sec FINE    ;
   7:   ;
   8:   ;
   9:   ;
  10:   ;
  11:   ;
  12:   ;
  13:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   325.754  mm,	Y =   136.247  mm,	Z =   106.840  mm,
	W =  -103.581 deg,	P =    -1.481 deg,	R =    -1.218 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =   948.553  mm,	Y =   136.246  mm,	Z =   106.841  mm,
	W =  -103.581 deg,	P =    -1.481 deg,	R =    -1.218 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   279.794  mm,	Y =   -20.173  mm,	Z =   317.999  mm,
	W =   -98.930 deg,	P =     -.384 deg,	R =      .881 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1045.515  mm,	Y =   -15.309  mm,	Z =   317.997  mm,
	W =   -98.930 deg,	P =     -.384 deg,	R =      .881 deg
};
/END
