program Ej8(input, output);
var 
    c : char;
    n, ind, ind2 : integer;
begin
    write('Ingrese un caracter c: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);
    for ind := n downto 1 do
        begin
            for ind2 := 1 to ind do
                write(c);
            writeln;
        end
end.