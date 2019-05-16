/PROG  JOB6
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1466;
CREATE		= DATE 19-04-13  TIME 16:59:48;
MODIFIED	= DATE 19-04-13  TIME 17:36:52;
FILE_NAME	= JOB2;
VERSION		= 0;
LINE_COUNT	= 88;
MEMORY_SIZE	= 1922;
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
   1:  !PALETA NA GRIJAC 3 ;
   2:   ;
   3:  CALL CLR_SCR    ;
   4:  GO[1]=R[100:Job Number] ;
   5:   ;
   6:  !Select active pallet ;
   7:  LBL[40] ;
   8:  IF DI[70:Pall1 In Pos]=ON AND DI[66:Pall1 Active]=ON,JMP LBL[10] ;
   9:  IF DI[78:Pall2 In Pos]=ON AND DI[74:Pall2 Active]=ON,JMP LBL[20] ;
  10:  MESSAGE[PALETE NISU SPREMNE ] ;
  11:  WAIT   1.00(sec) ;
  12:  JMP LBL[40] ;
  13:  END ;
  14:   ;
  15:  CALL CLR_SCR    ;
  16:  !Picking from Pallet 1 ;
  17:  LBL[10] ;
  18:  CALL PICK_PAL1    ;
  19:  JMP LBL[50] ;
  20:   ;
  21:  !Picking from Pallet 2 ;
  22:  LBL[20] ;
  23:  CALL PICK_PAL2    ;
  24:  JMP LBL[50] ;
  25:   ;
  26:  LBL[50] ;
  27:   ;
  28:  UFRAME_NUM=12 ;
  29:  UTOOL_NUM=1 ;
  30:   ;
  31:J PR[6:V_MID_W2H3] 50% CNT100    ;
  32:   ;
  33:J PR[42:V_HEATER_3] 50% CNT100    ;
  34:   ;
  35:  WAIT DI[16:PermissSpace9]=ON    ;
  36:   ;
  37:  UFRAME_NUM=9 ;
  38:  UTOOL_NUM=1 ;
  39:   ;
  40:  R[31:HEATER3 Y OFFS]=95-R[43:Heater Pos]    ;
  41:   ;
  42:  //R[5:HEATER2 Y OFFS]=R[5:HEATER2 Y OFFS]*(-1)    ;
  43:   ;
  44:  R[32:HEATER3 Z OFFS]=R[40:Handling height]+20    ;
  45:   ;
  46:  CALL PR(95,0,R[31:HEATER3 Y OFFS],R[32:HEATER3 Z OFFS]) ;
  47:   ;
  48:J PR[43:HEATER_3_REF] 100% CNT20 Offset,PR[95:OFFSET H3 ]    ;
  49:   ;
  50:  R[32:HEATER3 Z OFFS]=R[40:Handling height]+3    ;
  51:   ;
  52:  CALL PR(95,0,R[31:HEATER3 Y OFFS],R[32:HEATER3 Z OFFS]) ;
  53:   ;
  54:L PR[43:HEATER_3_REF] 200mm/sec FINE Offset,PR[95:OFFSET H3 ]    ;
  55:   ;
  56:  CALL GRP_OPN    ;
  57:   ;
  58:  DO[52:PICK AND PLACE PLS]=PULSE,1.0sec ;
  59:   ;
  60:  R[119:HEAT3 Y OFFS]=R[31:HEATER3 Y OFFS]    ;
  61:   ;
  62:  R[120:HEAT3 HANDLING]=R[40:Handling height]    ;
  63:   ;
  64:  R[121:HEAT3 HEIGHT]=R[41:WP Height]    ;
  65:   ;
  66:  R[40:Handling height]=0    ;
  67:  R[41:WP Height]=0    ;
  68:   ;
  69:  R[32:HEATER3 Z OFFS]=R[121:HEAT3 HEIGHT]+20    ;
  70:   ;
  71:  CALL PR(95,0,R[31:HEATER3 Y OFFS],R[32:HEATER3 Z OFFS]) ;
  72:   ;
  73:L PR[43:HEATER_3_REF] 100mm/sec CNT20 Offset,PR[95:OFFSET H3 ]    ;
  74:   ;
  75:  !JOB DONE: GO HOME ;
  76:   ;
  77:  UFRAME_NUM=12 ;
  78:  UTOOL_NUM=1 ;
  79:   ;
  80:  CALL H3_START    ;
  81:   ;
  82:J PR[42:V_HEATER_3] 100% FINE    ;
  83:   ;
  84:J PR[6:V_MID_W2H3] 100% CNT100    ;
  85:   ;
  86:J PR[1:HOME] 100% FINE    ;
  87:   ;
  88:  END ;
/POS
/END
