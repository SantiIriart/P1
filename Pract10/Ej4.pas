program Ej4;
type Meses = (enero, febrero, marzo, abril, mayo, junio, julio, agosto, setiembre, octubre, noviembre, diciembre);
var par : Meses;
procedure Proced (par:Meses);
begin
case par of 
    enero : WriteLn('Enero');
    febrero : WriteLn('Febrero');
    Marzo : WriteLn('Marzo');
    abril : WriteLn('Abril');
    mayo : WriteLn('Mayo');
    junio: WriteLn('Junio');
    julio : WriteLn('Julio');
    agosto : WriteLn('Agosto');
    setiembre : WriteLn('Setiembre');
    octubre : WriteLn('Octubre');
    noviembre : WriteLn('Noviembre');
    diciembre : WriteLn('Diciembre')
    end;
end;
begin
Read(par);
Proced(par)
end.