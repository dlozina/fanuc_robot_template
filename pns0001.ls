/PROG  PNS0001
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AUTOMATIC";
PROG_SIZE	= 534;
CREATE		= DATE 18-01-08  TIME 20:01:40;
MODIFIED	= DATE 19-04-18  TIME 15:34:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 970;
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
   1:  LBL[1] ;
   2:  //WAIT 100.00(sec) ;
   3:  CALL CLR_SCR    ;
   4:  PAYLOAD[1:EOAT w/o part] ;
   5:  !Check Rob.in Home ;
   6:  CALL CHK_HOME    ;
   7:   ;
   8:   ;
   9:   ;
  10:  !Initalisation ;
  11:  //CALL INIT    ;
  12:  //CALL CHK_DATA    ;
  13:   ;
  14:  OVERRIDE=80% ;
  15:   ;
  16:  !Cycle start ;
  17:  LBL[3] ;
  18:  CALL MAIN    ;
  19:   ;
  20:  !Cycle stop ;
  21:  IF DI[4:HBTE]=ON,JMP LBL[998] ;
  22:  IF DI[3:AutoStop]=ON,JMP LBL[998] ;
  23:  JMP LBL[3] ;
  24:   ;
  25:  LBL[998] ;
  26:  !Home position ;
  27:  ABORT ;
/POS
/END
