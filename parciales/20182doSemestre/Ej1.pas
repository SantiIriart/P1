program Ej1;
const
    MaxDatos = 10; (* algún valor apropiado *)
type
    RangoInfo = 1..MaxDatos;
    RangoTope = 0..MaxDatos;
    Natural = 0..MaxInt;
    Valores = record
        info : ARRAY [RangoInfo] OF Natural;
        tope : RangoTope;
    end;

var 
    arr : Valores;
    i, n : Integer;

procedure LeoValores (var arr : Valores);
var
n : integer;
cont : integer;
begin
    arr.tope := 0;
    cont := 1;
    read(n);
    while (n>=0) and (cont <= MaxDatos) do
        begin
            arr.tope:= cont;
            arr.info[cont]:=n;
            read(n);
            cont:=cont + 1
        end
end;

function consecutivosSumanN (arr : Valores; num : Natural) : Boolean;
var
cont : Integer;
res : Boolean;
begin
res:= False;
cont:= 1;
    while (cont < arr.tope) and not res do
    begin
        if (arr.info[cont] + arr.info[cont+1]) = num then
            res:=True;
        cont:=cont+1;
    end;
consecutivosSumanN:=res;
end;

begin
    LeoValores(arr);
    for i:=1 to arr.tope do
        write(' ',arr.info[i], ' ');
    Read(n);
    WriteLn;
    write(consecutivosSumanN(arr, n));
    WriteLn;
    Writeln(arr.tope)
end.



{
Escribir una función que, dado un arreglo con tope arr, devuelva true si existe una secuencia no vacía de valores consecutivos en
el arreglo cuya suma sea igual a un natural num dado, y false en caso contrario.

Ejemplo (asumiendo MaxDatos = 4):
• con (arr.info = [10,3,5,4], arr.tope = 4) y num = 8, retorna true
• con (arr.info = [10,3,5,4], arr.tope = 4) y num = 19, retorna false
• con (arr.info = [10,3,5,4], arr.tope = 4) y num = 22, retorna true
• con (arr.info = [10,3,5,4], arr.tope = 4) y num = 0, retorna false
• con (arr.info = [?,?,?,?], arr.tope = 0) y num = 10, retorna false
}