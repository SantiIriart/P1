program ej11;
var
n, i, m, cont, ind, primoant : integer;
primo : Boolean;
begin
ind:=2;
Writeln('Ingrese dos enteros positivos');
Read(n,m);
primoant:= -1;
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
        begin
            if primoant + 2 = cont then
                WriteLn(primoant,' y ', cont);
            primoant:= cont
        end;
    end;
end
end.