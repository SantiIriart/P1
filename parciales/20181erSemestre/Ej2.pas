program ej2;
type
    ListaEnt = ^Celda;
    Celda = record
        elem: Integer;
        sig: ListaEnt
    end;

var
    n : integer;
    l : ListaEnt;

procedure duplicarN(n: Integer; var l : ListaEnt);
var
    original, sig : ListaEnt;
    hecho : boolean;
begin
    original := l;
    hecho := false;
    while (l <> nil) and not hecho do
    begin
        if l^.elem = n then
        begin
            sig := l^.sig;
            l^.sig^.elem := n;
            l^.sig^.sig := sig;
            hecho := true
        end;
        l := l^.sig
    end;
    l := original
end;

procedure rellenar(var l : ListaEnt);
var
    m : ListaEnt;
    n : Integer;
begin
    m := l;
    while n <> 0 do
    begin
        m^.elem := n;
        new(m);
        m^.sig := l;
        l := m;
        m := m^.sig
    end;
    m.sig := nil
end;

begin
    rellenar(l);
    while l^.sig <> nil do
    begin
        write(l^.elem, ' ');
        l := l^.sig;
    end;
end.

{
    que agrega una celda con el valor n inmediatamente después de la primera celda de la lista original que contenga n. Si n
no está en la lista, esta no se modifica.
Ejemplos:
n= 3, l = [12, 3, 4, 0] → después de ejecutar el procedimiento: l = [12, 3, 3, 4, 0]
n= 3, l = [ 3, 3, 5, 3] → después de ejecutar el procedimiento: l = [ 3, 3, 3, 5, 3]
n= 3, l = [12, 2, 4, 1] → después de ejecutar el procedimiento: l = [12, 2, 4, 1]
n= 3, l = [] → después de ejecutar el procedimiento: l = []
}