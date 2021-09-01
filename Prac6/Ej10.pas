program ej10;
var
n, i, m, cont, ind : integer;
primo : Boolean;
begin
ind:=2;
Writeln('Ingrese dos enteros positivos');
Read(n,m);
cont:=n;
if n<=m then
begin
    for i:=n to m do
    begin
        primo:=True;
        cont := cont + 1;
        for ind := 2 to cont - 1 do
            if cont mod ind = 0 then
            begin
                primo := false;
            end;
        if primo then
            Write(cont, ' ')
    end;
end
end.