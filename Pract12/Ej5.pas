program Ej5;

type
   Positivo = 1..MaxInt;
   ListaInt = ^TCelda;
   TCelda   = record
                info : integer;
                sig  : ListaInt
              end;
    PosibleElem = record case ok : boolean of
                  true  : (elem : integer);
                  false : ()
                end;
function suma(l : ListaInt) : integer;
var
total : integer;
begin
    total := 0;
    while l <> nil do
    begin
        total := total + l^.info;
        l := l^.sig
    end;
    suma := total
end;

function minimo(l : ListaInt) : integer;
var aux : Integer;
begin
    repeat
        if aux > l^.info then
            aux:=l^.info;
        l:=l^.sig
    until l <> nil;
    minimo:= aux;
end;

function producto(l : ListaInt) : integer;
var
    total : integer;
begin
    total := 1;
    while l <> nil do
    begin
        total := total * l^.info;
        l := l^.sig
    end;
    producto := total
end;

function cuantosPares(l : ListaInt) : integer;
VAR cont : Integer;
begin
cont := 0;
while l <> nil do
begin
  if (l^.info mod 2) = 0 then
    cont:=cont+1;
end;
cuantosPares:=cont;
end;

function posicion(valor : integer; l : ListaInt) : integer;
var valorActual, contador : integer;
begin
    contador := 0;
    posicion := -1;
    while l <> nil do
    begin
        contador := contador + 1;
        if l^.info = valor then
            posicion := contador;
        l := l^.sig
    end
end;

procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
var cont : Integer;
begin
    resultado.ok := false;
    cont := 1;
    while (l <> nil) AND (cont<pos) do
        begin
            l:=l^.sig;
            cont:= cont+1
        end;
    if l <> nil then
    begin
        resultado.ok := true;
        resultado.elem := l^.info;
    end
end;

function ultimo(l : ListaInt) :Integer;
begin
    while l^.sig <> nil do
    begin
        l := l^.sig
    end;
    ultimo := l.info
end;

function ordenada(l : ListaInt) : Boolean;
begin
    ordenada := true;
    while l^.sig <> nil do
        if l^.info > l^.sig.info then
            ordenada := false;
end;
begin
  
end.