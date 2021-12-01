program Ej4;
 var a,b, dig: integer;

 procedure proc(a,b : integer; var c : integer);

 function func(a: integer) : integer;
 var b: integer;
 begin
 b := c + a;
 func := b + c;
 end;
 begin
 c := b + c;
 writeln(func(c));
 writeln(a+b);
 end;
begin
 readln(dig);
 a := dig;
 b := dig + 2;
 proc(dig,a,b);
 writeln(a);
 writeln(b);
end.