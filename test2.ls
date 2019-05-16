/PROG  TEST2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 668;
CREATE		= DATE 19-03-25  TIME 10:40:12;
MODIFIED	= DATE 19-04-04  TIME 16:55:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 972;
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
   1:  UFRAME_NUM=5 ;
   2:  UTOOL_NUM=5 ;
   3:   ;
   4:L PR[40:IN_WELDING_1] 100mm/sec FINE    ;
   5:   ;
   6:   ;
   7:L P[2] 100mm/sec FINE Offset,PR[88:TEST 2]    ;
   8:   ;
   9:  UFRAME_NUM=1 ;
  10:  UTOOL_NUM=2 ;
  11:   ;
  12:L P[3] 100mm/sec FINE Tool_Offset,PR[89:TEST 3]    ;
  13:   ;
  14:   ;
  15:   ;
  16:   ;
  17:   ;
/POS
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1268.211  mm,	Y =   -62.271  mm,	Z =   106.136  mm,
	W =  -117.458 deg,	P =   -56.704 deg,	R =    23.157 deg
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1268.211  mm,	Y =   -62.271  mm,	Z =   106.115  mm,
	W =   -89.663 deg,	P =      .226 deg,	R =     -.379 deg
};
/END
