program Ej1;
const MAX = 5; (* algún valor apropiado *)
type 
    TLetra = 'A'..'Z';
    TLargo = 0 .. MAX;
    TIndice = 1 .. MAX;
    TCadADN = record
        cad : array [tIndice] of TLetra;
        tope : TLargo;
    end;

procedure amplificarADN ( letra : TLetra; cant : TLargo; VAR cadena : TCadADN );
var
cont : Integer;
begin
cont :=0;
  while (cadena.tope<MAX) and (cont<cant) do
    begin
      cont:=cont+1;
      cadena.cad[cadena.tope+1]:=letra;
      cadena.tope:=cadena.tope+1;
    end;
end;

function indSubCadADN( cadena : TCadADN; letra : TLetra; largo : TLargo ) : integer;
var
i, cont, ind : Integer;
begin
ind:= -1;
i := 1;
cont := 0;
  while (i<=cadena.tope) and (largo > 0) and (cont < largo) do
  begin
    if cadena.cad[i] = letra then
    begin
        if cont = 0 then
            ind := i;
        cont:=cont+1
    end
    else
    begin
        cont:= 0;
        ind := -1
    end;
    i := i + 1
  end;
  indSubCadADN := ind
end;



begin
   
end.

{
  parte a: Escriba el siguiente procedimiento que agrega la letra al final de la cadena tantas veces como se indica en cant. El procedimiento
agrega tantas veces como pueda mientras el arreglo no se llene.

  parte b: Escriba la siguiente función que dada una cadena, una letra y un largo, determine si existe una subcadena de letras consecutivas
iguales a letra de largo al menos largo. Si existe, devuelve el indice de ocurrencia de la primera letra, devuelve -1 en caso
contrario. De existir más de una subcadena, devuelve la de menor índice. Si largo es menor que 1 devuelve -1.
}