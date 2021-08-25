PROGRAM dou ;
Var m, v, err :Real;
begin
write('ingrese m y v ');
read (m,v);
err := abs(m-v)/2;
WriteLn('medicion= ',m);
WriteLn('Valor= ', v);
WriteLn('Error =', err);
END. 