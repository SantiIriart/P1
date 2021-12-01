program Ej1;
const
    MAX_LETRAS = 6;
    TOTAL_PALABRAS = 3;

type
    TLetras = 'a' .. 'z';
    Texto = record
        letras: array[1 .. MAX_LETRAS] of TLetras;
        tope: 0 .. MAX_LETRAS;
    end;
    Diccionario = array[1 .. TOTAL_PALABRAS] of Texto;
    
var
    t1, t2 : Texto;

procedure ingresardatos(var t : Texto);
var 
    cont : integer;
    c : char;
begin
    cont := 0;
    t.tope := 0;
    Writeln('Ingrese una palabra');
    read(c);
    while (c <> '.') and (cont < 6) do
    begin
        if (ord(c) >= ord('a')) and (ord(c) <= ord('z')) then
        begin
            cont := cont + 1;
            t.letras[cont] := c;
            t.tope := cont;
        end;
        read(c);
    end;
end;

function prefijo(t1,t2: Texto): Boolean;
var
    i : Integer;
    res : Boolean;
begin
    res:= True;
    for i:=1 to t1.tope do
        if t1.letras[i] <> t2.letras[i] then
            res:=False;
    prefijo:=res
end;

function prediccion(t: Texto; dic: Diccionario): Integer;
var
    i, ind : integer;
begin
    ind := 0;
    i := 1;
    repeat
        if prefijo(t, dic[i]) then
            ind:= i;
        i := i + 1;
    until (ind > 0) or (i > TOTAL_PALABRAS);
    prediccion:=ind
end;

function distancia(t1,t2: Texto): Integer;
var
    i, res, menor : integer;
begin
    res := 0;
    res := res + abs(t1.tope - t2.tope);
    if res <> 0 then
        if t1.tope < t2.tope then
            menor := t1.tope
        else menor := t2.tope
    else menor := t1.tope;
    for i := 1 to menor do
        if t1.letras[i] <> t2.letras[i] then
            res := res + 1;
    distancia := res
end;

begin
    ingresardatos(t1);
    ingresardatos(t2);
{Writeln();
for j:=1 to t1.tope do
  Write(t1.letras[j]);
  WriteLn;
  for j:=1 to t2.tope do
  Write(t2.letras[j]);
  WriteLn;
  WriteLn(t1.tope);
  Writeln(t2.tope);}
    writeln(distancia(t1, t2));
end.

{
    dados dos textos, devuelve la cantidad de letras diferentes entre ellos, comparando posición a posición, más la
diferencia entre los topes. Es decir, calcula la cantidad de elementos que cumplen t1.letras[i] <> t2.letras[i] más
abs(t1.tope - t2.tope).
Ejemplos para MAX_LETRAS = 6 (se omiten las comitas de los chars por simplicidad)
t1.letras:[p,s,d,e,l,?], t1.tope:5 y t2.letras:[p,a,p,e,l,?], t2.tope:5, la función devuelve 2
t1.letras:[p,s,d,?,?,?], t1.tope:3 y t2.letras:[p,a,p,e,l,?], t2.tope:5, la función devuelve 4
t1.letras:[p,a,p,e,l,?], t1.tope:5 y t2.letras:[p,a,p,e,l,?], t2.tope:5, la función devuelve 0

}