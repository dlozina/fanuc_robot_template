/PROG  PLACE_PAL4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 786;
CREATE		= DATE 19-03-22  TIME 09:28:42;
MODIFIED	= DATE 19-04-17  TIME 15:42:00;
FILE_NAME	= PLACE_PA;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1250;
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
   5:J PR[25:V_PAL4] 50% CNT100    ;
   6:   ;
   7:  WAIT DI[11:PermissSpace4]=ON    ;
   8:   ;
   9:  !Calculate pick pos ;
  10:  CALL PAL4_CALC    ;
  11:   ;
  12:  UFRAME_NUM=4 ;
  13:  UTOOL_NUM=1 ;
  14:   ;
  15:J PR[26:PAL4_REF] 30% CNT20 Offset,PR[50:PAL REF OFFSET]    ;
  16:   ;
  17:  PR[52:PAL REF AUX]=PR[50:PAL REF OFFSET]    ;
  18:   ;
  19:  !Place height ;
  20:  PR[52,3:PAL REF AUX]=R[40:Handling height]-80    ;
  21:   ;
  22:L PR[26:PAL4_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX]    ;
  23:   ;
  24:  CALL GRP_OPN    ;
  25:   ;
  26:  DO[52:PICK AND PLACE PLS]=PULSE,1.0sec ;
  27:   ;
  28:  R[40:Handling height]=0    ;
  29:  R[41:WP Height]=0    ;
  30:  R[42:Pick TCP Offs]=0    ;
  31:   ;
  32:  PR[52,3:PAL REF AUX]=200    ;
  33:   ;
  34:L PR[26:PAL4_REF] 100mm/sec FINE Offset,PR[52:PAL REF AUX]    ;
  35:   ;
  36:  UFRAME_NUM=12 ;
  37:  UTOOL_NUM=1 ;
  38:   ;
  39:J PR[25:V_PAL4] 50% CNT100    ;
  40:   ;
  41:   ;
  42:  END ;
  43:  LBL[90] ;
  44:  MESSAGE[***] ;
  45:  ABORT ;
  46:   ;
/POS
/END
