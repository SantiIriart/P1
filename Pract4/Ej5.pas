program Ej5;
VAR n, ind : Integer;
begin
    WriteLn('Ingrese un numero: ');
    ReadLn(n);
    for ind := 1 to n do
        begin
            if n mod ind = 0 then
                write(ind, ' ');
        end;
end.