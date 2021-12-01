program Ej3;
type
Lista = ^Nodo;
Nodo = record
    elem : char;
    sig : Lista
end;

var
    
    val : char;
    pos : integer;
    l : Lista;

{procedure InsPos(val : char; pos : integer; var l : Lista );
var
aux ,aux1 : Lista;
cont : Integer;
begin
    aux := l;
    cont := 1;
    if l = Nil then
    begin
        new(aux1);
        aux1^.elem:= Val;
        aux^.sig := Nil;
        l^.sig:=aux
    end
    else
      while (l^.sig <> nil) or (cont<>pos) do
      begin
        cont := cont + 1;
        aux := aux^.sig
      end;
      if (cont = pos) then
      begin

             
      end;
        
          
end;}

procedure InsPos2(val : char; pos : integer; var l : Lista );
var
    p, q : Lista;
    largo : integer;
begin
    largo := 1;
    p := l;
    while (p <> nil) and (largo < pos-1) do
    begin
        p := p^.sig;
        largo := largo + 1
    end;
    new(q);
    q^.elem:= Val;
    if largo < pos-1 then
    begin
        q^.sig := Nil;
        p := q
    end
    else
        q^.sig := p^.sig;
        p^.sig := q
end;

procedure crearLista(var l : Lista);
var
    p, q : Lista;
    c, cent : char;
    primera : boolean;
begin
    cent := '.';
    new(l);
    p := l;
    primera := true;
    write('Ingresa los caracteres: ');
    read(c);
    while c <> cent do
    begin
        if (ord(c) >= ord('a')) and (ord(c) <= ord('z')) then
        begin
            if primera then
            begin
                p^.elem := c;
                p^.sig := nil;
                primera := false
            end
            else
            begin
                new(q);
                q^.elem := c;
                q^.sig := nil;
                p^.sig := q;
                p := p^.sig
            end
        end;
        read(c)
    end
end;

procedure leerLista(l : Lista);
begin
    while l <> nil do
    begin
        write(l^.elem);
        l := l^.sig;
    end
end;

begin
    crearLista(l);
    val := 'h';
    pos := 5;
    InsPos2(val, pos, l);
    leerLista(l)
end.

{
    Escribir un procedimiento que, dada una lista l de tipo Lista, un carácter val y una posición pos (empezando en 1), inserta el
elemento en esa posición de la lista.

Si la posición excede al largo de la lista, el elemento se inserta al final.
Ejemplo:
• con val = 'a', pos = 1 y l = <'x','y','z'>, retorna l = <'a','x','y','z'>
• con val = 'a', pos = 2 y l = <'x','y','z'>, retorna l = <'x','a','y','z'>
• con val = 'a', pos = 4 y l = <'x','y','z'>, retorna l = <'x','y','z','a'>
• con val = 'a', pos = 10 y l = <'x','y','z'>, retorna l = <'x','y','z','a'>
• con val = 'a', pos = 10 y l = <>, retorna l = <'a'>
}