program ej10;
var 
entrada : Integer;
salida : Real;
begin
WriteLn('Inserte Numero ');
read(entrada);
    if entrada>=1000 then
    begin
    salida:=entrada/1000;
    write(salida:5:3);
    end
    else
    write(entrada);
end. 