PROGRAM Ej1a (output);
VAR aux, n : Integer;
BEGIN
   aux := 2;
   FOR n := 1 TO 4 DO
   BEGIN
      aux := aux * n;
      writeln (n, aux)
   END
END. 