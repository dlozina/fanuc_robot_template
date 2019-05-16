/PROG  AKT_POS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 584;
CREATE		= DATE 18-02-14  TIME 09:17:16;
MODIFIED	= DATE 18-02-14  TIME 09:36:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 860;
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
   1:  !Actual pos in Joint ;
   2:  !in PosReg 80 save ;
   3:  PR[80:akt.pos.inJoint]=JPOS    ;
   4:   ;
   5:  !Axis pos.save ;
   6:  R[80:akt.pos J1]=PR[80,1:akt.pos.inJoint]    ;
   7:  R[81:akt.pos J2]=PR[80,2:akt.pos.inJoint]    ;
   8:  R[82:akt.pos J3]=PR[80,3:akt.pos.inJoint]    ;
   9:  R[83:akt.pos J4]=PR[80,4:akt.pos.inJoint]    ;
  10:  R[84:akt.pos J5]=PR[80,5:akt.pos.inJoint]    ;
  11:  R[85:akt.pos J6]=PR[80,6:akt.pos.inJoint]    ;
  12:   ;
  13:  !Actual pos in World ;
  14:  !in PosReg 81 save ;
  15:  PR[81:akt.pos.inWorld]=LPOS    ;
  16:   ;
  17:  !Axis pos.save ;
  18:  R[86:akt.pos X]=PR[81,1:akt.pos.inWorld]    ;
  19:  R[87:akt.pos Y]=PR[81,2:akt.pos.inWorld]    ;
  20:  R[88:akt.pos Z]=PR[81,3:akt.pos.inWorld]    ;
  21:  R[89:akt.pos W]=PR[81,4:akt.pos.inWorld]    ;
  22:  R[90:akt.pos P]=PR[81,5:akt.pos.inWorld]    ;
  23:  R[91:akt.pos R]=PR[81,6:akt.pos.inWorld]    ;
  24:   ;
/POS
/END
