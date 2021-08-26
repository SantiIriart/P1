program Ej10a;
var
numero, resultado : Integer;
caracter, operacion : Char;
begin
write('Ingrese un numero: ');
read(caracter);
resultado := ord(caracter) - 48;
operacion := ' ';
while (operacion <> '=') and (caracter <> '=') do
    begin
        read(operacion);
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
        writeln(operacion, ' ', caracter)
    end;
    writeln(resultado:0)
end.