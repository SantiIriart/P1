program Ej13;
const cent = 0;
var n, factors : Integer;
lol, primero : Boolean;
function FactorPrimo(n : Integer) : Integer; 
var 
    i, j : integer;
    primo, factor : Boolean;
begin
    i := 2;
    primo := false;
    factor := false;
    while (i < n) and not factor do
    begin
        primo := true;
        for j := i-1 downto 2 do
            if i mod j = 0 then
                primo := false;
        if not primo then
            i := i + 1
        else
            if n mod i = 0 then
                factor := true
            else
                i := i + 1
    end;
    FactorPrimo := i
end;
begin
    Write('Ingrese un numeros positivos o 0 para salir: ');
    Read(n);
    while n <> cent do
    begin
        lol := False;
        primero := true;
        factors := FactorPrimo(n);
        while not lol do
        begin
            if n < 2 then
            begin
                write('Ingrese numeros mayores o iguales a 2.');
                lol := true
            end
            else
            if primero then
            begin
                primero := false;
                write(factors);
                if factors = n then
                    lol := true
            end
            else
            if n <> factors then
            begin
                if (n div factors) mod factors = 0 then
                begin
                    write(' * ', factors);
                    n := n div factors;
                end                
                else
                begin
                    n := n div factors;
                    factors := FactorPrimo(n);
                    write(' * ', factors);
                end
            end
            else
            begin
                lol := true;
            end;
        end;
        writeln;
        writeln;
        read(n)
    end     
end.