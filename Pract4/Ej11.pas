program Ej11;
VAR m, n, res : Integer;
begin
WriteLn('Ingrese un valor para m ');
ReadLn(m);
WriteLn('Ingrese un valor para n ');
ReadLn(n);
res := sqr(m)-18*m+5;
WriteLn('El valor máximo para x en el entorno de ', m,' a ', n, ' es ', res)
end.