FUNCTION_BLOCK FB_1 EXTENDS FB_Base
VAR_OUTPUT
    iBase : INT;
END_VAR

THIS^.METH_DoIt();  //Call of the methods of FB_1
THIS^.METH_DoAlso();

SUPER^.METH_DoIt();   //Call of the methods of FB_Base
SUPER^.METH_DoAlso();
iBase := SUPER^.iCnt;

METHOD METH_DoIt : BOOL
iCnt := 1111;
METH_DoIt := TRUE;

PROGRAM PLC_PRG
VAR
    myBase : FB_Base;
    myFB_1 : FB_1;
    iTHIS : INT;
    iBase : INT;
END_VAR
myBase();
iBase := myBase.iCnt;
myFB_1();
iTHIS := myFB_1.iCnt;

FUNCTION_BLOCK FB_Base
VAR_OUTPUT
    iCnt : INT;
END_VAR

METHOD METH_DoIt : BOOL
iCnt := -1;

METHOD METH_DoAlso : BOOL
METH_DoAlso := TRUE;

FUNCTION_BLOCK FB_1 EXTENDS FB_Base
VAR_OUTPUT
    iBase : INT;
END_VAR

THIS^.METH_DoIt();  //Call of the methods of FB_1
THIS^.METH_DoAlso();

SUPER^.METH_DoIt();   //Call of the methods of FB_Base
SUPER^.METH_DoAlso();
iBase := SUPER^.iCnt;

METHOD METH_DoIt : BOOL
 iCnt := 1111;
 METH_DoIt := TRUE;

PROGRAM PLC_PRG
VAR
 myBase : FB_Base;
 myFB_1 : FB_1;
 iTHIS : INT;
 iBase : INT;
END_VAR

myBase();
iBase := myBase.iCnt;
myFB_1();
iTHIS := myFB_1.iCnt;

