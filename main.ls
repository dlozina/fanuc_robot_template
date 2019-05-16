/PROG  MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1236;
CREATE		= DATE 18-01-10  TIME 18:49:22;
MODIFIED	= DATE 19-03-21  TIME 11:19:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 1868;
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
   1:  !Main program ;
   2:   ;
   3:  LBL[1] ;
   4:  CALL CLR_SCR    ;
   5:  MESSAGE[WAITING FOR THE NEXT] ;
   6:  MESSAGE[JOB....] ;
   7:  ! ;
   8:  WAIT DI[20:Job Start]=ON OR DI[4:HBTE]=ON OR DI[3:AutoStop]=ON    ;
   9:   ;
  10:  CALL CLR_SCR    ;
  11:  IF DI[4:HBTE]=ON,JMP LBL[100] ;
  12:  WAIT    .50(sec) ;
  13:   ;
  14:  IF DI[3:AutoStop]=ON,JMP LBL[100] ;
  15:   ;
  16:  UFRAME_NUM=0 ;
  17:  ! ;
  18:   ;
  19:  R[100:Job Number]=GI[1:Job Number]    ;
  20:   ;
  21:  DO[20:ResetJobStart]=ON ;
  22:  WAIT DI[20:Job Start]=OFF    ;
  23:  DO[20:ResetJobStart]=OFF ;
  24:   ;
  25:  TIMER[1]=RESET ;
  26:  TIMER[1]=START ;
  27:   ;
  28:  !Sequence for cell ;
  29:  SELECT R[100:Job Number]=1,CALL JOB1 ;
  30:         =2,CALL JOB2 ;
  31:         =3,CALL JOB3 ;
  32:         =4,CALL JOB4 ;
  33:         =5,CALL JOB5 ;
  34:         =6,CALL JOB6 ;
  35:         =7,CALL JOB7 ;
  36:         =8,CALL JOB8 ;
  37:         =9,CALL JOB9 ;
  38:         =10,CALL JOB10 ;
  39:         =11,CALL JOB11 ;
  40:         =12,CALL JOB12 ;
  41:         =13,CALL JOB13 ;
  42:         =14,CALL JOB14 ;
  43:         =15,CALL JOB15 ;
  44:         =16,CALL JOB16 ;
  45:         =17,CALL JOB17 ;
  46:         =18,CALL JOB18 ;
  47:         ELSE,JMP LBL[98] ;
  48:   ;
  49:   ;
  50:  TIMER[1]=STOP ;
  51:  R[99:Job Timer]=TIMER[1]    ;
  52:   ;
  53:  GO[1]=R[100:Job Number] ;
  54:  DO[21:JobFinished]=ON ;
  55:  WAIT DI[21:Reset Job Finish]=ON    ;
  56:   ;
  57:  DO[21:JobFinished]=OFF ;
  58:  WAIT DI[21:Reset Job Finish]=OFF    ;
  59:  GO[1]=0 ;
  60:   ;
  61:  LBL[100] ;
  62:  !Job End ;
  63:  END ;
  64:   ;
  65:  LBL[98] ;
  66:  MESSAGE[*** Wrong Jobnumber ***] ;
  67:  ABORT ;
  68:  LBL[99] ;
  69:   ;
  70:  END ;
/POS
/END
