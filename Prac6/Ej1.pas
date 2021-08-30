program ej1;
VAR 
n,m, mcd, mayor, menor, aux : Integer;
salida : Boolean;
begin
WriteLn('Ingrese n y m: ');
Read(n,m);
mcd:=0;
salida:=false;
    if n<m then
        begin
          menor:=n;
        mayor:=m 
        end
    else
        begin
             menor:=m;
             mayor:=n;
        end;
    while salida=false do
        begin
        if menor=0 then
        begin
            mcd:=mayor;
            salida:=true
        end
        else
        begin
        aux:= mayor;
        mayor:= menor;
        menor:= aux mod mayor
        end;
        end;
WriteLn('MCD = ', mcd:0)
end.