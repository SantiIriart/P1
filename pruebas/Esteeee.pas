program esteeee;
CONST N =20; (* algún entero mayor que cero *)
 separa = ' ';
TYPE TipoFrase = Array [1..N] of Char;

FUNCTION PalabraMasLarga (fra : TipoFrase) : Integer;
var 
cont, cont2 : integer;
begin
cont1 :=0;
cont2:=0;
for i:= 1 to N do
    if fra[i] <> separa then
        cont:=cont+1
    else
        begin
        if cont>cont2 then
            cont2:=cont1;
            cont:=0;
        end;
PalabraMasLarga:=cont2;
end;




begin
  
end.


{Escribir la función PalabraMasLarga que, dada una frase, devuelve el largo de la palabra de mayor largo en dicha frase. Las
palabras están separadas por uno o mas espacios. Además, puede haber espacios al inicio y/o al final de la frase.
}