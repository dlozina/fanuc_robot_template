/PROG  M2_DOOR_CLS_CHECK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 352;
CREATE		= DATE 19-04-15  TIME 12:24:06;
MODIFIED	= DATE 19-04-15  TIME 12:26:42;
FILE_NAME	= M1_DOOR_;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 844;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  $WAITTMOUT=200 ;
   2:  WAIT (DI[53:W2_DOOR_CLOSED]) TIMEOUT,LBL[1] ;
   3:   ;
   4:   ;
   5:  END ;
   6:  LBL[1] ;
   7:  MESSAGE[...] ;
   8:  MESSAGE[VRATA STROJA 2] ;
   9:  MESSAGE[NISU ZATVORENA] ;
  10:  WAIT (DI[53:W2_DOOR_CLOSED])    ;
  11:  END ;
/POS
/END