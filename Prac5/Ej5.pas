program Ej5;
var
i : integer;
x : real;
begin
    x := 1.5;
    i := 0;
    repeat
        x := sqr(x);
        i := i + 1
    until i = 5;
    writeln(x);

    x := 1.5;
    FOR i := 1 TO 5 DO
        x := sqr(x);
    write (x);
end.