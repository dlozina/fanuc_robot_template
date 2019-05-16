/PROG  BG_LOGIC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 276;
CREATE		= DATE 19-03-19  TIME 14:05:04;
MODIFIED	= DATE 19-03-19  TIME 14:11:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 608;
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
   1:  IF (DI[39]),RO[1:Open Gripper]=(ON) ;
   2:   ;
   3:  IF (DI[39]),RO[2:Close Gripper]=(OFF) ;
   4:   ;
   5:   ;
   6:  IF (DI[40]),RO[2:Close Gripper]=(ON) ;
   7:   ;
   8:  IF (DI[40]),RO[1:Open Gripper]=(OFF) ;
   9:   ;
  10:   ;
/POS
/END
