program ej3;
CONST N = 10;
type Arreglo = ARRAY [1..N] OF Integer;
var
    hello : Arreglo;
    i,num : integer;
procedure Carga(var hola : Arreglo);
var i, k : integer;
begin
    Write('Escriba ', N:0, ' numeros enteros: ');
    for i := 1 to N do
    begin
        Read(k);
        hola[i] := k
    end;
end;
function CantMayores(hola: Arreglo; num: integer): Integer;
var i, cont :integer;
begin
cont:=0;
for i:=1 to N do
if hola[i]>num then
cont:=cont+1;
CantMayores:=cont
end;
//function Ordenado(hola : arreglo; )
begin
    Carga(hello);
    writeln;
    for i := 1 to N do
        if i=N then
            write(hello[i]:0)
        else
        write(hello[i]:0, ', ');
    Writeln;
    Write('Ingrese un numero ');
    ReadLn(num);
    Write(CantMayores(hello,num):0)
end.