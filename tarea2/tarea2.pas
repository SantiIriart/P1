{
Devuelve en t un Tablero para el cual todas sus Casillas:
  * Están ocultas
  * Están libres
  * No tienen minas alrededor
}
procedure IniciarTableroVacio (var t : Tablero);
VAR
i, j : Integer;
cuadricula : Casilla;
begin
for i :=1 to CANT_FIL do
  for j :=1 to CANT_COL do
  begin
    cuadricula.oculto := true;
    cuadricula.tipo := Libre;
    cuadricula.minasAlrededor := 0;
    t[i, j] := cuadricula
  end
end;

{
Para toda Casilla c del Tablero que es una Mina, c deja de estar oculta
}
procedure DesocultarMinas (var t : Tablero);
VAR
i,j : Integer;
c : Casilla;
begin
for i := 1 to CANT_FIL do
  for j := 1 to CANT_COL do
  begin
    c:= t[i,j];
    if c.tipo = Mina then 
      c.oculto:=False;
    t[i,j]:= c
  end
end;

{
Devuelve true si tanto la fila f como la columna c son válidas,
es decir corresponden a una casilla del tablero.
De lo contrario devuelve false.
}
function EsPosicionValida (f, c : integer) : boolean;
begin
  if (f >= 1 ) and (f <= CANT_FIL) and (c >= 1) and (c <= CANT_COL) then
    EsPosicionValida := true
  else
    EsPosicionValida := false
end;

{
Agrega minas al Tablero t en cada una de las casillas c correspondientes a
posiciones contenidas en m, es decir que dichas casillas cambien su tipo a Mina.

Adicionalmente asigna el valor del campo minasAlrededor de las casillas del tablero
que queden libres. Este deberá contener la cantidad de casillas adyacentes que 
son minas.
}
procedure AgregarMinas (m : Minas; var t : Tablero);
var
i, fActual, cActual : integer;
j, k : -1..1;
pos : posicion;
begin
  for i := 1 to m.tope do
  begin
    pos := m.elems[i];
    t[pos.fila, pos.columna].tipo := Mina;
    for j := -1 to 1 do
      for k := -1 to 1 do
      begin
        fActual := pos.fila + j;
        cActual := pos.columna + k;
        if EsPosicionValida(fActual, cActual) and (t[fActual,cActual].tipo = Libre) then
          t[fActual, cActual].minasAlrededor := t[fActual, cActual].minasAlrededor + 1
      end
  end
end;

{
Si la fila f y columna c corresponden a una Casilla cas válida del Tablero t 
(ver procedimiento EsPosicionValida) y cas es Libre entonces cas deja de estar 
oculta.
Adicionalmente si la Casilla cumple con lo anterior y no tiene minas alrededor 
entonces se agrega la Posicion correspondiente a dicha casilla al final de la 
listaPos libres.
}
procedure Desocultar (f, c : integer; var t : Tablero; var libres : ListaPos);
var
pos : posicion;
begin
  if EsPosicionValida(f, c) and (t[f, c].tipo = Libre) and t[f, c].oculto then
  begin
    t[f, c].oculto := false;
    if t[f, c].minasAlrededor = 0 then
    begin
      pos.fila := f;
      pos.columna := c;
      AgregarAlFinal(pos, libres)    
    end
  end
end;

{
Desoculta (ver procedimiento Desocultar) todas las casillas adyacentes a la
Casilla del Tablero t asociada a la fila f y la columna c.
}
procedure DesocultarAdyacentes (f, c : integer; var t : Tablero;
                                var libres : ListaPos);
VAR 
fActual, cActual : integer;
j, k : -1..1;
begin
  for j := -1 to 1 do
    for k := -1 to 1 do
      begin
        fActual := f + j;
        cActual := c + k; 
        if EsPosicionValida(fActual, cActual) then
        Desocultar(fActual, cActual, t, libres);
      end
end;

{
Desoculta (ver procedimiento Desocultar) la Casilla del Tablero t asociada a la 
fila f y la columna c. Si esa casilla está libre y no tiene minas alrededor, 
también se desocultan todas sus casillas adyacentes. Para las casillas adyacentes 
desocultadas se repite el mismo procedimiento de desocultar a sus adyacentes si 
no tienen minas alrededor, y así sucesivamente hasta que no queden más casillas 
adyacentes que cumplan con estas condiciones.
}
procedure DesocultarDesde (f : RangoFilas;  c : RangoColum; var t : Tablero);
var
  libres : ListaPos;
  fActual, cActual: integer;
  pos : Posicion;
begin
  if EsPosicionValida(f, c) then
  begin
    new(libres);
    libres^.pos.fila := f;
    libres^.pos.columna := c;
    Desocultar(f, c, t, libres);
    while libres <> nil do
    begin
      PrimeraPosicion(pos, libres);
      fActual := pos.fila;
      cActual := pos.columna;
      if t[fActual, cActual].minasAlrededor = 0 then
        DesocultarAdyacentes(fActual, cActual, t, libres);
    end
  end
end;
{
Devuelve true si no existe ninguna Casilla en el Tablero t que cumpla con estar 
oculta y ser Libre. En otro caso devuelve false.
}
function EsTableroCompleto(t : Tablero) : boolean;
VAR 
i, j : Integer;
res  : Boolean;
begin
  res:=True;
  for i := 1 to CANT_FIL do
    for j := 1 to CANT_COL do
      if not ((t[i,j].tipo = Libre) AND (t[i,j].oculto)) then
        res:=False;
  EsTableroCompleto:=res;
end;

