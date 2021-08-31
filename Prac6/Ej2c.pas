program Ej2c;
const cent = '.';
var letra, oracion : Char;
cont, cont2 : Integer;
begin
cont2:= 0;
cont:=0;
oracion:=' ';
Writeln('Ingrese una letra ');
ReadLn(letra);
WriteLn('Ingrese la oracion terminada en "."');
repeat
Read(oracion);
if  (letra=oracion) then
cont2:=cont2+1;
if ((oracion=' ') OR (oracion='.')) then
begin
if  (cont2=1) then
cont:=cont+1;
cont2:=0
end;
until oracion=cent;
WriteLn(cont)
end.