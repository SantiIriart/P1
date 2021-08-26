program Ej9;
var
n, ind: Integer;
primo : Boolean;
begin
WriteLn('Ingrese un numero');
ReadLn(n);
primo:=True;
ind:=2;
while primo AND (ind<>n) do
    begin
    if n MOD ind = 0 then
    primo:=False;
    ind:=ind+1
end;
    if primo=True then
      WriteLn('n es primo')
    else
    WriteLn('n no es primo')
end.