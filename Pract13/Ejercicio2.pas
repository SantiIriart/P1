program Ejercicio2;
const
    MAXCOL = 10;  {algún valor apropiado}
    MAXFIL = 5;  {algún valor apropiado}

type

    matrizEnteros = array [1..MAXFIL, 1..MAXCOL] of Integer;

    TPosicion = record
        fil : 1 .. MAXFIL;
        col : 1 .. MAXCOL;
    end;

    TOcurrencias = record
        ocurrencia : array [1 .. MAXCOL * MAXFIL] of TPosicion;
        tope         : 0 .. MAXCOL * MAXFIL;
    end;

function BuscarElemento(e : Integer; a : arregloEnteros) : boolean;
var
i: Integer;
res : Boolean;
begin
    res:= false;
    for i:=1 to MAXCOL do
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

function BuscarElementoMatriz(e : Integer; m : matrizEnteros) : boolean;
var
i : integer;
res : boolean;
begin
    res := False;
    while (i <= MAXFIL) and not res do
        if BuscarElemento(e, m[i]) then
            res := True;
    BuscarElemento := res;
end;

 procedure BuscarOcurrenciasParesMatriz(m : matrizEnteros; VAR ocurrencias : TOcurrencias);
 var i, j : integer;
 begin
    for i := 1 to MAXFIL do
        for j := 1 to MAXCOL do
        begin
            if m[i, j] mod 2 = 0 then
            begin
                ocurrencias.tope := ocurrencias.tope + 1;
                ocurrencias.ocurrencia[ocurrencias.tope].fil := i;
                ocurrencias.ocurrencia[ocurrencias.tope].col := j
            end
        end
 end;

 begin
   
 end.