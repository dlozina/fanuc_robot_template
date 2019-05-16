/PROG  GRP_OPN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 454;
CREATE		= DATE 19-03-15  TIME 13:58:56;
MODIFIED	= DATE 19-04-15  TIME 15:40:26;
FILE_NAME	= GRP_RAW_;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 914;
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
   1:  RO[2:Close Gripper]=OFF ;
   2:  RO[1:Open Gripper]=ON ;
   3:   ;
   4:  !Signal to PLC ;
   5:  DO[54]=(RO[2:Close Gripper]) ;
   6:  DO[53]=(RO[1:Open Gripper]) ;
   7:   ;
   8:  WAIT   3.00(sec) ;
   9:   ;
  10:  $WAITTMOUT=200 ;
  11:  WAIT (RI[1:Gripper Opened]) TIMEOUT,LBL[1] ;
  12:   ;
  13:   ;
  14:  END ;
  15:  LBL[1] ;
  16:  MESSAGE[GRIPER...] ;
  17:  MESSAGE[NIJE OTVORIO] ;
  18:  WAIT (RI[1:Gripper Opened])    ;
  19:  END ;
/POS
/END
