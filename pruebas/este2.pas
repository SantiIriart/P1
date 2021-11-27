program este2;
CONST MAX = 10; (* algún entero mayor que cero *)
TYPE
 Natural = 0..MAXINT;
 Secuencia = RECORD
 valores : ARRAY [1..MAX] OF Natural;
tope : 0..MAX;
 END;
var 
val : Natural;
sec : Secuencia;
i: Integer;
     
FUNCTION EsSecuenciaOrdenada (sec : Secuencia) : boolean;
var i: Integer;
res : Boolean;
begin
res:=True;
for i:=1 to sec.tope do
    if (i>1) AND (sec.valores[i]<=sec.valores[i-1]) then
        res:=False;
EsSecuenciaOrdenada:=res;
end;


procedure MoverDerecha (val : Natural; VAR sec : Secuencia; lugar : Natural);
var i : integer;
begin
for i:= sec.tope downto lugar do 
    sec.valores[i+1]:= sec.valores[i];
sec.tope:=sec.tope+1;
sec.valores[lugar]:= Val
end;

PROCEDURE AgregarValor (val : Natural; VAR sec : Secuencia);
var inf, sup, medio : Integer;
begin
inf:= 1;
sup:= sec.tope;
medio:= (inf+sup) div 2;
if EsSecuenciaOrdenada(sec) then
    begin
    if val>sec.valores[sup] then
    begin
        sec.tope:= sec.tope+1;
        sec.valores[sec.tope]:= val
    end
      else if val<sec.valores[inf] then
        MoverDerecha(Val, sec, inf)
      else
      begin
        while not((inf>sup) or (sec.valores[medio]<Val) and (sec.valores[medio+1]>Val)) do
        begin
          if val < sec.valores[medio] then
                sup := medio - 1
            else if val > sec.valores[medio+1] then
                inf:= medio+2;
            medio:= (inf+sup) DIV 2 
        end;
        if inf<= sup then
            MoverDerecha(Val, sec, medio+1);
        end
    end;
end;

begin
sec.valores[1]:= 4;
sec.valores[2]:= 6;
sec.valores[3]:= 9;
sec.valores[4]:= 10;
sec.tope:= 4;
val := 11;
AgregarValor(val, sec);

for i:=1 to sec.tope do
    WriteLn(sec.valores[i])

end.
{a) Escribir la función EsSecuenciaOrdenada que, dada una secuencia, devuelve true si sus valores no se repiten y están
ordenados de menor a mayor, false en otro caso.
}
{b) (15 pts) Escribir el procedimiento AgregarValor que, dados un valor y una secuencia ya ordenada de menor a mayor, inserta el
nuevo valor en la ubicación que le corresponda, de tal manera que la secuencia siga ordenada tras la inserción. Asuma que el valor
no pertenece a la secuencia y que la secuencia tiene espacio suficiente para almacenar el nuevo valor.}