PROGRAM encontrar;
VAR 
   esta : Boolean;
   aux, cont : Integer;
BEGIN
  esta := False;
  cont := 0;
  aux := 2;
  WHILE (NOT esta) OR (cont < 10) DO
       IF (aux < 1) THEN
            cont := cont + 1
       ELSE
             aux := aux - 1;
   WriteLn(cont)
END.