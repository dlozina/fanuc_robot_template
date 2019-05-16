/PROG  PICK_PAL1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 836;
CREATE		= DATE 19-03-18  TIME 07:57:26;
MODIFIED	= DATE 19-04-17  TIME 15:40:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1292;
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
   1:  UFRAME_NUM=12 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:J PR[10:V_PAL1] 50% CNT100    ;
   5:   ;
   6:  WAIT DI[8:PermissSpace1]=ON    ;
   7:   ;
   8:  !Calculate pick pos ;
   9:  CALL PAL1_CALC    ;
  10:   ;
  11:  UFRAME_NUM=1 ;
  12:  UTOOL_NUM=1 ;
  13:   ;
  14:J PR[11:PAL1_REF] 30% CNT20 Offset,PR[50:PAL REF OFFSET]    ;
  15:   ;
  16:  PR[52:PAL REF AUX]=PR[50:PAL REF OFFSET]    ;
  17:  !Pick height ;
  18:  PR[52,3:PAL REF AUX]=GI[6:Pall1 Height]-GI[20:Pall1_PickStep]    ;
  19:   ;
  20:L PR[11:PAL1_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX]    ;
  21:   ;
  22:  CALL GRP_CLS    ;
  23:   ;
  24:  DO[52:PICK AND PLACE PLS]=PULSE,1.0sec ;
  25:   ;
  26:   ;
  27:  R[43:Heater Pos]=GI[9:Pall1 Radius]-GI[7:Pall1 Pick Y]    ;
  28:  R[42:Pick TCP Offs]=GI[7:Pall1 Pick Y]    ;
  29:  R[40:Handling height]=PR[52,3:PAL REF AUX]    ;
  30:  R[41:WP Height]=GI[6:Pall1 Height]    ;
  31:   ;
  32:  CALL PR(99,0,0,(-60)) ;
  33:   ;
  34:L PR[11:PAL1_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX] Tool_Offset,PR[99:OFFSET PALLET]    ;
  35:   ;
  36:  CALL PR(99,(-200),0,(-60)) ;
  37:   ;
  38:L PR[11:PAL1_REF] 200mm/sec FINE Offset,PR[52:PAL REF AUX] Tool_Offset,PR[99:OFFSET PALLET]    ;
  39:   ;
  40:  UFRAME_NUM=12 ;
  41:  UTOOL_NUM=1 ;
  42:   ;
  43:J PR[10:V_PAL1] 30% FINE    ;
  44:   ;
  45:   ;
  46:  END ;
  47:  LBL[90] ;
  48:  MESSAGE[***] ;
  49:  ABORT ;
  50:   ;
/POS
/END
