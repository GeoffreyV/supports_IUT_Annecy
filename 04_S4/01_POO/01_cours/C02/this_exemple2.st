FUNCTION funA
VAR_INPUT
 pFB: fbA; //La fonction A prend en parametre d'entree 
           //un objet issu de la classe fbA
END_VAR
...;

FUNCTION_BLOCK  fbA
VAR_INPUT
 iVarA: INT;
END_VAR
...;

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
iVarB := 22;    
funA(pFB := THIS^);    //On donne l'objet appelant en parametre
                       //de la fonction funA 
PROGRAM PLC_PRG
VAR
 MyfbB: fbB;
END_VAR
MyfbB(iVarA:=0 , iVarB:= 0);
MyfbB.DoIt();