FUNCTION_BLOCK  fbA
VAR_INPUT
 iVarA: INT;
END_VAR
iVarA := 1;

FUNCTION_BLOCK fbB EXTENDS fbA
VAR_INPUT
 iVarB: INT := 0;
END_VAR
iVarA := 11;
iVarB := 2;

METHOD DoIt : BOOL
VAR_INPUT
END_VAR
VAR
 iVarB: INT;
END_VAR
iVarB := 22;    // The local variable iVarB is set.
THIS^.iVarB := 222;    // The function block variable iVarB is set even though iVarB is obscured.

PROGRAM PLC_PRG
VAR
 MyfbB: fbB;
END_VAR

MyfbB(iVarA:=0, iVarB:= 0);
MyfbB.DoIt();