PROGRAM UserCase
VAR
oStep : CStep := (tTaskPeriod := T#10ms);





itfStep : ITF_ObjStep := oStep;
pStep : POINTER TO CStep := ADR(oStep);
xFirstCycleRun : BOOL := TRUE;
END_VAR
IF (xFirstCycleRun) THEN
    ~\dotfill~
    xFirstCycleRun := FALSE;
END_IF
~\dotfill~
~\dotfill~
~\dotfill~
~\dotfill~
