program Ej4;
var
n, i, cont, ind : integer;
raiz: real;
primo, primo2 : Boolean;
begin
raiz:=0;
cont:=1;

primo2:=False;
ind:=2;
Writeln('Ingrese un numero');
ReadLn(n);
for i:=1 to n do
begin
    while not primo2 do
    begin
        cont := cont + 1;
        for ind := 2 to cont - 1 do
            if cont mod ind = 0 then
            begin
                primo:=False;
            end;
        if primo then
            primo2:=True;
        primo:=false
    end;
primo2:=false;
Write(raiz:0:2, ' ')
end
end.