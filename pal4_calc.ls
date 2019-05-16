/PROG  PAL4_CALC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 788;
CREATE		= DATE 19-03-22  TIME 08:44:50;
MODIFIED	= DATE 19-04-13  TIME 14:32:08;
FILE_NAME	= PAL3_CAL;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1276;
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
   2:  IF GI[16:Pall4 Place Pos]<0 OR GI[16:Pall4 Place Pos]>17,JMP LBL[90] ;
   3:   ;
   4:  R[189]=GI[16:Pall4 Place Pos]    ;
   5:  R[190]=R[189] MOD 6    ;
   6:  R[191]=R[189] DIV 6    ;
   7:   ;
   8:  !Z Offset for approach 60mm over ;
   9:  R[192]=R[40:Handling height]+60    ;
  10:   ;
  11:  !XYZ offset from origin ;
  12:  PR[50,1:PAL REF OFFSET]=R[190]*195    ;
  13:  PR[50,2:PAL REF OFFSET]=R[191]*145    ;
  14:   ;
  15:  !Y offset from origin ;
  16:  R[24:PAL3 Y OFFS]=GI[18:Pall4 Place Y]+30    ;
  17:  R[24:PAL3 Y OFFS]=R[24:PAL3 Y OFFS]*(-1)    ;
  18:   ;
  19:  PR[50,2:PAL REF OFFSET]=PR[50,2:PAL REF OFFSET]+R[24:PAL3 Y OFFS]    ;
  20:   ;
  21:   ;
  22:  PR[50,3:PAL REF OFFSET]=R[192]    ;
  23:   ;
  24:  PR[50,4:PAL REF OFFSET]=0    ;
  25:  PR[50,5:PAL REF OFFSET]=0    ;
  26:  PR[50,6:PAL REF OFFSET]=0    ;
  27:   ;
  28:   ;
  29:  END ;
  30:  LBL[90] ;
  31:  MESSAGE[****Wrong pick pos. Nr.***] ;
  32:   ;
  33:  PAUSE ;
  34:  JMP LBL[90] ;
  35:  END ;
  36:   ;
/POS
/END
