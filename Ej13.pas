program Ej13;
uses SysUtils;
var 
    n, d: integer;
    n2, d2, lugares: string;
begin
    Write('Ingrese un numero de 4 digitos: ');
    ReadLn(n);
    Write('Ingrese un numero entero de un digito: ');
    ReadLn(d);
    n2:=IntToStr(n);
    d2:=IntToStr(d);

    if d2=n2[1] then
        lugares:='+'
    else
        lugares:=' ';

    if d2=n2[2] then
        lugares:=lugares+'+'
    else
        lugares:=lugares+' ';

    if d2=n2[3] then
        lugares:=lugares+'+'
    else
        lugares:=lugares+' ';
    
    if d2=n2[4] then
        lugares:=lugares+'+'
    else
        lugares:=lugares+' ';
    
    WriteLn(n);
    WriteLn(lugares);
end.