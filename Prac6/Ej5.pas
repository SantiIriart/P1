program ej5;
var
n, cua : Integer;
begin
WriteLn('ingrese un numero n');
Read(n);
cua:=0;
while sqr(cua)-sqr(cua-1)<=n do
begin
cua:=cua+1;
Write(sqr(cua),' ')
end;
end.