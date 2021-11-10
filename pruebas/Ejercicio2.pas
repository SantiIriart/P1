PROGRAM Ejercicio2 (input, output);
VAR x : Integer;

PROCEDURE procA (VAR y : Integer);
BEGIN
    y := y * 2;
END;

PROCEDURE procB (x : Integer);
BEGIN
    x := x + 5;
END;

BEGIN
    readLn (x);
    procB (x);
    writeLn (x);
    procA (x);
    writeLn (x)
END.