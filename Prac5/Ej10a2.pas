program Ej10a2;
var
numero, resultado, cifras : Integer;
caracter, anterior, operacion : Char;
begin
write('Ingrese un numero: ');
read(caracter);
resultado := ord(caracter) - 48;
operacion := ' ';
cifras := 0;
while (operacion <> '=') and (caracter <> '=') do
    begin
        read(caracter);
        case caracter of
            '+', '-', '*', '/' : operacion := caracter;
            else
                if (caracter <= '9') and (caracter >= '0') then
                    if (anterior > '9') or (anterior < '0') then
                        numero := ord(caracter) - 48
                    else
                        if cifras = 0 then
                            begin
                                cifras := 1;
                                numero := (ord(anterior) - 48) * 10 + ord(caracter) - 48;
                            end
                        else
                            numero := numero * 10 + ord(caracter) - 48;
                          

        end;
        {read(operacion);
        read(caracter);
        if (caracter <= '9') or (caracter >= '0') then
            begin
                numero := ord(caracter) - 48;
                case operacion of
                    '+' : resultado := resultado + numero;
                    '-' : resultado := resultado - numero;
                    '*' : resultado := resultado * numero;
                    '/' : resultado := resultado div numero;
                end;
            end;
        writeln(operacion, ' ', caracter)}
        anterior := caracter;
    end;
    writeln(resultado:0)
end.