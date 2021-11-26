program prueba;
type 
TCaso = (creal,cint,cchar);
RealIntChar = record case
    caso : TCaso of
    creal : (vreal : real);
    cint : (vint : integer);
    cchar : (vchar : char)
 end;

ListaH = ^TCeldaH;
TCeldaH = record
    info : RealIntChar;
    sig : ListaH
 end;

function producto (lista : listaH) : real;
var 
res : Real;
begin
res:=1;
while (lista<>nil) or (res=0) do
begin
    if lista^.info.caso = creal then
        res:=res*lista^.info.vreal
    else 
        if lista^.info.caso = cint then
            res:=res*lista^.info.vint;
    lista:=lista^.sig
end;
producto:=res;
end;
{Escribir la siguiente función producto, que retorna el producto de todos los números de la lista incluyendo enteros y reales. Si la
lista no contiene ningún número, el resultado del producto debe ser 1. Notar que si alguna de las celdas contiene un 0 el resultado
del producto será 0.}
begin

end.
{Ejemplos:
• lista = (caso=cint, vint=2) → (caso=cchar, vchar=’a’) → (caso=creal, vreal=3.0), resultado = 6.0
• lista = (caso=cint, vint=2) → (caso=cint, vint=0) → (caso=creal, vreal=3.0), resultado = 0.0
• lista = (caso=cchar, vchar=’2’) → (caso=cchar, vchar=’a’), resultado = 1.0
• lista = vacía, resultado = 1.0}

