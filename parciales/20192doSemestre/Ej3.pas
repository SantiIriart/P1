program Ej3;
var z : integer;
procedure primera(var a : integer; var b : integer);
var z : integer;
begin
z:= a+1;
a:= z;
b:= b*2;
writeln (z)
end; (*primera*)
procedure tercera(a : integer; var b : integer);
begin
a:= a+1;
b:= b*2;
writeLn(a,' ',b,' ',z)
end; (*tercera*)
begin
readln(z);
tercera(z,z);
primera(z,z);
writeLn(z)
end.