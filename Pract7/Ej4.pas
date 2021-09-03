program Ej4;
var a, b, c : Integer;
procedure girar(var a,b,c:Integer);
var aux : Integer;
begin
  aux:=c;
  c:=b;
  b:=a;
  a:=aux;
end;
begin
WriteLn('Ingrese valor hijueputa');
ReadLn(a,b,c);
girar(a,b,c);
  WriteLn(a, ' ',b, ' ',c)
end.