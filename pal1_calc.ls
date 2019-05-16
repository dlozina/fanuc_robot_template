/PROG  PAL1_CALC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 688;
CREATE		= DATE 18-01-11  TIME 22:09:00;
MODIFIED	= DATE 19-04-07  TIME 12:04:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1192;
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
   1:  !Check Pick pos. Nr. ;
   2:  IF GI[8:Pall1 Pick Pos]<0 OR GI[8:Pall1 Pick Pos]>17,JMP LBL[90] ;
   3:   ;
   4:  R[189]=GI[8:Pall1 Pick Pos]    ;
   5:  R[190]=R[189] MOD 6    ;
   6:  R[191]=R[189] DIV 6    ;
   7:   ;
   8:  !Z Offset for approach 15mm over ;
   9:  R[192]=GI[6:Pall1 Height]+15    ;
  10:   ;
  11:  !XYZ offset from origin ;
  12:  PR[50,1:PAL REF OFFSET]=R[190]*250    ;
  13:  PR[50,2:PAL REF OFFSET]=R[191]*160    ;
  14:   ;
  15:  !Y Pick offset   ;
  16:  PR[50,2:PAL REF OFFSET]=PR[50,2:PAL REF OFFSET]+GI[7:Pall1 Pick Y]+31    ;
  17:   ;
  18:  PR[50,3:PAL REF OFFSET]=R[192]    ;
  19:   ;
  20:  PR[50,4:PAL REF OFFSET]=0    ;
  21:  PR[50,5:PAL REF OFFSET]=0    ;
  22:  PR[50,6:PAL REF OFFSET]=0    ;
  23:   ;
  24:   ;
  25:  END ;
  26:  LBL[90] ;
  27:  MESSAGE[****Wrong pick pos. Nr.***] ;
  28:   ;
  29:  PAUSE ;
  30:  JMP LBL[90] ;
  31:  END ;
  32:   ;
/POS
/END
