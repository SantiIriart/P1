program Ejercicio1;
const
    MAX = 10;  {algún valor apropiado}
type
      arregloEnteros = array [1..MAX] of Integer;
var 
e, pos : Integer;
a : arregloEnteros;
f : boolean;

function BuscarElemento(e : Integer; a : arregloEnteros) : boolean;
var
i: Integer;
res : Boolean;
begin
    res:= false;
    for i:=1 to MAX do
        if a[i] = e then
            res:=True;
    BuscarElemento:=res
end;

procedure BuscarPosicionElemento(e : Integer; a : arregloEnteros; VAR ocurre : BOOLEAN; VAR pos : Integer);
var i : Integer;
begin
ocurre:=BuscarElemento(e,a);
pos:=0;
i:=1;
if ocurre then
  while pos=0 do
    begin
    if a[i]=e then
      pos:=i;
      i:= i+1
    end;
WriteLn('Se encuentra en la posicion: ',pos)
end;
begin
a[1]:=1;
a[2]:=2;
a[3]:=3;
a[4]:=4;
a[5]:=5;
a[6]:=6;
a[7]:=7;
a[8]:=8;
a[9]:=9;
a[10]:=10;
e:=7;
Writeln(BuscarElemento(e,a));
BuscarPosicionElemento(e, a, f, pos)
end.