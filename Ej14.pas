program Ej14;
var
a, b, c, discr, cuenta, suma, resta : Real;
complejo: string;
begin
    complejo:='';
    Write('Inserte coeficientes a, b, c ');
    Read(a,b,c);
    discr:=(b*b)-4*a*c;
    cuenta:=-b;
    if discr<0 then
        begin
            discr:=discr*(-1);
            complejo:='i';
        end;
    suma:=(cuenta+sqrt(discr))/(2*a);
    resta:=(cuenta-sqrt(discr))/(2*a);
    if suma=resta then
        WriteLn('Es raiz doble ', suma:5:2, complejo)
    else
        WriteLn('Tiene 2 raices: ', suma:5:2, complejo, ' y ',resta:5:2, complejo)
end.