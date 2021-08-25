PROGRAM Ej1c (output);
VAR k, bajo : Integer;
BEGIN
   bajo := 1;
   FOR k := bajo TO 3 DO
   BEGIN
      bajo := bajo + 2;
      writeln (k, bajo)
   END
END. 