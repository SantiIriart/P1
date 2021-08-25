PROGRAM suma_cuadrados;
VAR
  V1, v2, suma_cuad, i : Integer;
BEGIN
  readln(v1, v2);
suma_cuad := sqr(v1);
FOR i := v1+1 TO v2 DO
     suma_cuad := suma_cuad + sqr(i);
  writeln(suma_cuad)
END.