PROGRAM Ej1e (output);
VAR i, j, num : Integer;
BEGIN
   num := 1;
   FOR i := 1 TO 3 DO
   BEGIN
      num := num + i;
      FOR j := 1 TO num DO
         write (j);
      writeLn (i)
   END;
END. 