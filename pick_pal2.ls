/PROG  PICK_PAL2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 878;
CREATE		= DATE 19-03-19  TIME 16:36:32;
MODIFIED	= DATE 19-04-17  TIME 15:41:00;
FILE_NAME	= PICK_PAL;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1334;
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
   1:  UFRAME_NUM=12 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:J PR[15:V_PAL2] 50% CNT100    ;
   5:   ;
   6:  WAIT DI[9:PermissSpace2]=ON    ;
   7:   ;
   8:  !Calculate pick pos ;
   9:  CALL PAL2_CALC    ;
  10:   ;
  11:  UFRAME_NUM=2 ;
  12:  UTOOL_NUM=1 ;
  13:   ;
  14:J PR[16:PAL2_REF] 30% CNT20 Offset,PR[50:PAL REF OFFSET]    ;
  15:   ;
  16:  PR[52:PAL REF AUX]=PR[50:PAL REF OFFSET]    ;
  17:  !Pick height ;
  18:  PR[52,3:PAL REF AUX]=GI[11:Pall2 Height]-GI[21:Pall2_PickStep]    ;
  19:   ;
  20:L PR[16:PAL2_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX]    ;
  21:   ;
  22:  CALL GRP_CLS    ;
  23:   ;
  24:  DO[52:PICK AND PLACE PLS]=PULSE,1.0sec ;
  25:   ;
  26:  R[43:Heater Pos]=GI[14:Pal2 Radius ]-GI[12:Pall2 Pick Y]    ;
  27:   ;
  28:  R[42:Pick TCP Offs]=GI[12:Pall2 Pick Y]    ;
  29:  R[40:Handling height]=PR[52,3:PAL REF AUX]    ;
  30:  R[41:WP Height]=GI[11:Pall2 Height]    ;
  31:   ;
  32:  CALL PR(99,0,0,(-60)) ;
  33:   ;
  34:L PR[16:PAL2_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX] Tool_Offset,PR[99:OFFSET PALLET]    ;
  35:   ;
  36:  CALL PR(99,(-200),0,(-60)) ;
  37:   ;
  38:L PR[16:PAL2_REF] 200mm/sec FINE Offset,PR[52:PAL REF AUX] Tool_Offset,PR[99:OFFSET PALLET]    ;
  39:   ;
  40:  UFRAME_NUM=12 ;
  41:  UTOOL_NUM=1 ;
  42:   ;
  43:J PR[15:V_PAL2] 30% FINE    ;
  44:   ;
  45:   ;
  46:  END ;
  47:  LBL[90] ;
  48:  MESSAGE[***] ;
  49:  ABORT ;
  50:   ;
/POS
/END
