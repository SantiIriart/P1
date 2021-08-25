program Ej6;
VAR n, aux, ind, menor, mayor : integer;
begin
    write('Ingresa un numero: ');
    readln(n);
    write('Ingresa ', n, ' enteros: ');
    read(aux);
    menor := aux;
    mayor := aux;
    for ind := 0 to n-2 do
        begin
            read(aux);
            if aux < menor then
                menor := aux;
            if aux > mayor then
                mayor := aux;
            
        end;
    writeln('El mayor entero ingresado es: ', mayor);
    WriteLn('El menor entero ingresado es: ', menor);
end.