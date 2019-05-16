/PROG  PLACE_PAL3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 826;
CREATE		= DATE 19-03-22  TIME 08:10:30;
MODIFIED	= DATE 19-04-17  TIME 15:41:36;
FILE_NAME	= PICK_PAL;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 1278;
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
   4:  //J PR[38:V_WELDING_1 ] 100% CNT100    ;
   5:J PR[25:V_PAL4] 30% CNT20    ;
   6:   ;
   7:J PR[20:V_PAL3] 30% CNT20    ;
   8:   ;
   9:  WAIT DI[10:PermissSpace3]=ON    ;
  10:   ;
  11:  !Calculate pick pos ;
  12:  CALL PAL3_CALC    ;
  13:   ;
  14:  UFRAME_NUM=3 ;
  15:  UTOOL_NUM=1 ;
  16:   ;
  17:J PR[21:PAL3_REF] 30% CNT20 Offset,PR[50:PAL REF OFFSET]    ;
  18:   ;
  19:  PR[52:PAL REF AUX]=PR[50:PAL REF OFFSET]    ;
  20:   ;
  21:  !Place height ;
  22:  PR[52,3:PAL REF AUX]=R[40:Handling height]-80    ;
  23:   ;
  24:L PR[21:PAL3_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX]    ;
  25:   ;
  26:  CALL GRP_OPN    ;
  27:   ;
  28:  DO[52:PICK AND PLACE PLS]=PULSE,1.0sec ;
  29:   ;
  30:  R[40:Handling height]=0    ;
  31:  R[41:WP Height]=0    ;
  32:  R[42:Pick TCP Offs]=0    ;
  33:   ;
  34:  PR[52,3:PAL REF AUX]=200    ;
  35:   ;
  36:L PR[21:PAL3_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX]    ;
  37:   ;
  38:  UFRAME_NUM=12 ;
  39:  UTOOL_NUM=1 ;
  40:   ;
  41:J PR[20:V_PAL3] 50% CNT20    ;
  42:   ;
  43:J PR[25:V_PAL4] 50% CNT20    ;
  44:   ;
  45:  END ;
  46:  LBL[90] ;
  47:  MESSAGE[***] ;
  48:  ABORT ;
  49:   ;
/POS
/END
