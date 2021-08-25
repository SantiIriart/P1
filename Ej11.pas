program ej11;
var
a, b, c, d, e, f, opcion : Real;
begin
  WriteLn('Inserte variables ');
  Read(a,b,c,d,e,f);
    opcion:=a*e-d*b;
    if opcion<>0 then
        begin
            WriteLn('x vale: ', ((c*e-f*b)/opcion):5:3);
            WriteLn('y vale: ', ((a*f-d*c)/opcion):5:3);
        end
    else
        WriteLn('No se puede dividir entre 0.');
end.