program prueba (input,output);
VAR v1: integer;
 v2: integer;
Function f1 (a: integer): integer;
BEGIN
 a:= a + 2;
 f1:= a;
END;
Procedure p1 (var v3: integer);
var v1 : integer;
BEGIN
 v3:= f1(v3);
 v1:=v3 * 2;
 Writeln(v1);
END;
BEGIN
 Read(v1);
 v2:= v1 + 2;
 p1(v2);
 Writeln(v1);
 Writeln(v2);
END.
