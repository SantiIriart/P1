program Ej12;
const cent = -1;
var
m, n : integer;
function Multiplo(m, n : integer) : boolean;
begin
    if (m mod n = 0) or (n mod m = 0) then
        Multiplo := True
    else
        Multiplo := False;
end;
begin
    Write('Ingrese los valores de m y n por pares, ingrese -1 para salir: ');
    repeat
        ReadLn(m, n);
        WriteLn;
        WriteLn(Multiplo(m, n))
    until (m = cent) OR (n = cent)
end.