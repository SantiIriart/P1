program Ej2a;
const cent = '.';
var letra, oracion, ant : Char;
cont : Integer;
begin
cont:=0;
oracion:=' ';
ant:=' ';
Writeln('Ingrese una letra ');
ReadLn(letra);
WriteLn('Ingrese la oracion terminada en "."');
repeat
Read(oracion);
if ((oracion=' ') or (oracion='.')) AND (letra=ant) then
cont:=cont+1;
ant:=oracion
until oracion=cent;
WriteLn(cont)
end.