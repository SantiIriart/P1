program Ej3;
Const cent = -1;
var
x, xPotenciada, resultado : real;
coeficiente, contador, i : integer;
begin
    resultado := 0;
    contador := 0;
    Write('Ingresa un valor para la x: ');
    ReadLn(x);
    Write('Ingrese los coeficientes: ');
    Read(coeficiente);
    Write('El resultado de ');
    while coeficiente <> cent do
    begin
        if contador > 0 then
            write(' + ');
        xPotenciada := 1;
        for i := 1 to contador do
            xPotenciada := xPotenciada * x;
        resultado := resultado + coeficiente * xPotenciada;
        Write(coeficiente:0, '(', x:0:2, '^', contador:0, ')');
        contador := contador + 1;
        Read(coeficiente)
    end;
    WriteLn(' es: ', resultado:0:2)
end.
