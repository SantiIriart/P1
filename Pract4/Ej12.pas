program Ej12;
VAR n, res, x, y, opn, ant : Integer;
begin
WriteLn('Ingrese un valor para n ');
ReadLn(n);
ant := 0;
opn:= -n;
for x := n DOWNTO opn do
    for y := n DOWNTO opn do
        begin
            res := sqr(x)-9*x*y+sqr(y);
            if res>ant then
                ant := res
        end;
    WriteLn('El valor maximo para x e y en el entorno de ', opn, ' ', 'a', ' ', n, ' ',ant)
end.