program Ej8;
CONST
	MaxDig = 100;
TYPE
   Digito = 0..9;
   Natural = RECORD
               digitos : ARRAY[1..MaxDig] OF Digito;
               tope : 0..MaxDig;
             END;

Procedure SumaNaturales (a, b : Natural; Var c : Natural);
var 
resto : Boolean;
tope, numero : integer;
begin
    resto := false;
    tope := a.tope;
    if a.tope > b.tope then
        tope := b.tope;
    for i := 1 to tope do
    begin
        numero := a.digitos[i] + b.digitos[i];
        if resto then
           numero := numero + 1;
        if numero >= 10 then
        begin
            numero := numero - 10;
            resto := true
        end
        else
            resto := false;
        c.digitos[i] := numero
    end;
    if resto then
    begin
        c.tope := c.tope + 1;
        c.digitos[tope] := 1;
    end
end;






begin
  
end.