PROGRAM Ej1b (output);
VAR a, b : Integer;
BEGIN
   FOR b := 1 TO 3 DO
   BEGIN
      IF b <= 1 THEN
         a := b - 1;
      IF b <= 2 THEN
         a := a - 1
      ELSE
         a := a + 1
   END;
   writeln (a)
END. 