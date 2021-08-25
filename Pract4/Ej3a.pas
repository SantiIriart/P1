program Ej3a;
Var sum, j, ind : Integer;
begin
sum := 0;
j := 10;
FOR ind := 1 TO 5 DO
BEGIN
   sum := sum + 2 * ind + 1 + j;
   j := j - 4;
   WriteLn(sum,' ', j)
END;
end.
