program Ej16;
type
    complejo = record
        re, im : real;
    end;
var c1, c2, c3 : complejo;
procedure sumaComplejos(c1, c2 : complejo; var c3 : complejo);
begin
    c3.re := c1.re + c2.re;
    c3.im := c1.im + c2.im
end;
procedure multiplicacionComplejos(c1, c2 : complejo; var c3 : complejo);
begin
    c3.re := c1.re * c2.re - c1.im * c2.im;
    c3.im := c1.im * c2.re + c1.re * c2.im
end;
procedure tomarValores(var c1, c2 : complejo);
begin
    write('Ingrese la parte real e imaginaria del primer numero: ');
    read(c1.re, c1.im);
    writeln;
    write('Ingrese la parte real e imaginaria del segundo numero: ');
    read(c2.re, c2.im);
end;
begin
    tomarValores(c1, c2);
    sumaComplejos(c1, c2, c3);
    writeln('La suma vale: ', c3.re:0:2, ' + i', c3.im:0:2);
    multiplicacionComplejos(c1, c2, c3);
    writeln('La multiplicacion vale: ', c3.re:0:2, ' + i', c3.im:0:2)
end.