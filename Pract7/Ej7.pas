program Ej7;
var
a, b, c, cant : integer;
x1, x2 : real;
procedure Raices(a, b, c : integer; var x1, x2 : real; var cant : integer);
    var
    discriminante : real;
    begin
        discriminante := Sqr(b) - 4 * a * c;
        if discriminante >= 0 then
        begin
            x1 := (- b + sqrt(discriminante)) / (2 * a);
            x2 := (- b - sqrt(discriminante)) / (2 * a);
            if x1 = x2 then
            begin
                cant := 1;
                writeln('x1 = ', x1:0:2, ', x2 = ?, cant = ', cant:0)
            end
            else
            begin   
                cant := 2;
                writeln('x1 = ', x1:0:2, ', x2 = ', x2:0:2, ', cant = ', cant:0)
            end
        end
        else
        begin
            x1 := 0;
            x2 := 0;
            cant := 0;
            WriteLn('x1 = ?, x2 = ?, cant = ', cant:0)
        end
    end;
procedure Pedir(var a, b, c : integer);
    begin
      write('Ingrese los valores de a, b y c: ');
      read(a, b, c)
    end;
begin
    Pedir(a, b, c);
    Raices(a, b, c, x1, x2, cant)
end.