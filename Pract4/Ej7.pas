program Ej7;
var n, aux, ind, ind2: integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    writeln('Ingrese ', n, ' enteros positivos menores que 60: ');
    for ind := 0 to n-1 do
        begin
            read(aux);
            for ind2 := 0 to aux-1 do
                write('*');
            WriteLn;
        end;
end.