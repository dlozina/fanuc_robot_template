/PROG  TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 684;
CREATE		= DATE 19-03-18  TIME 09:10:58;
MODIFIED	= DATE 19-03-18  TIME 09:32:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 1012;
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
   1:J P[1] 100% FINE    ;
   2:  PR[10,1:V_PAL1]=GI[10:Pall2 Diameter]+5    ;
   3:  PR[12]=PR[15:V_PAL2]    ;
   4:  PR[15:V_PAL2]=P[1]    ;
   5:  CALL PR(90,0,0,100) ;
   6:  PR[90,6]=25    ;
   7:   ;
   8:L P[2] 3000mm/sec FINE Offset,PR[90]    ;
   9:J P[2] 100% FINE Tool_Offset,PR[95:OFFSET H3 ]    ;
  10:   ;
  11:   ;
  12:   ;
  13:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 1, 0, 0',
	X = -1844.440  mm,	Y =   327.219  mm,	Z =   669.121  mm,
	W =   177.744 deg,	P =    -4.460 deg,	R =    98.075 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X = -1844.440  mm,	Y =   327.219  mm,	Z =   669.121  mm,
	W =   177.744 deg,	P =    -4.460 deg,	R =    98.075 deg
};
/END
