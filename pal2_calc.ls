/PROG  PAL2_CALC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 720;
CREATE		= DATE 19-03-20  TIME 08:01:10;
MODIFIED	= DATE 19-04-13  TIME 14:47:44;
FILE_NAME	= PAL1_CAL;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1100;
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
   1:  !Check Pick pos. Nr. ;
   2:  IF GI[13:Pall2 Pick Pos]<0 OR GI[13:Pall2 Pick Pos]>17,JMP LBL[90] ;
   3:   ;
   4:  R[189]=GI[13:Pall2 Pick Pos]    ;
   5:  R[190]=R[189] MOD 6    ;
   6:  R[191]=R[189] DIV 6    ;
   7:  !Z Offset for approach 25mm over ;
   8:  R[192]=GI[11:Pall2 Height]+25    ;
   9:   ;
  10:  !XYZ offset from origin ;
  11:  PR[50,1:PAL REF OFFSET]=R[190]*250    ;
  12:  PR[50,2:PAL REF OFFSET]=R[191]*160    ;
  13:   ;
  14:  !Y Pick offset ;
  15:  PR[50,2:PAL REF OFFSET]=PR[50,2:PAL REF OFFSET]+GI[12:Pall2 Pick Y]+31    ;
  16:   ;
  17:  PR[50,3:PAL REF OFFSET]=R[192]    ;
  18:   ;
  19:  PR[50,4:PAL REF OFFSET]=0    ;
  20:  PR[50,5:PAL REF OFFSET]=0    ;
  21:  PR[50,6:PAL REF OFFSET]=0    ;
  22:   ;
  23:   ;
  24:  END ;
  25:  LBL[90] ;
  26:  MESSAGE[****Wrong pick pos. Nr.***] ;
  27:   ;
  28:  PAUSE ;
  29:  JMP LBL[90] ;
  30:  END ;
  31:   ;
/POS
/END
