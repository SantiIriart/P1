program ej4;
TYPE
    TRaices = (complejas, dobles, realesdif);
        TipoRaices = record
            case raiz : TRaices of
            complejas : (rc1, rc2 : real);
            dobles: (rdoble: real);
            realesdif : (r1, r2 : real)
        end;
var 
a,b,c : real;
r : TipoRaices;
procedure Raices (a,b,c : Real; VAR r : TipoRaices);
var 
discr : Real;
    begin
        discr:= sqr(b)-4*a*c;
        if discr > 0 then
        r.raiz := realesdif
        else if discr=0 then
        r.raiz:= dobles
        else
        r.raiz:= complejas;

        WriteLn(discr);

    end;
procedure InsertarDatos(VAR a,b,c : real);
begin
    WriteLn('Ingrese los coeficientes ');
    read(a);
    read(b);
    read(c)
end;

begin
    InsertarDatos(a,b,c);
    Raices(a,b,c,r);

end.