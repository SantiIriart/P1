program Ej9;
var x1, y1, x2, y2 : Real;
function Distancia(x1,y1,x2,y2 : Real) : Real;
begin
    Distancia := sqrt(sqr(x1 - x2) + sqr(y1 - y2));
end;
begin
write('Ingresa los valores de x1, y1, x2 e y2: ');
read(x1, y1, x2, y2);
writeln;
writeln(Distancia(x1, y1, x2, y2):0:2)
end.