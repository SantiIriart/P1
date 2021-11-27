program este3;
TYPE
    Lista = ^Celda;
    Celda = RECORD
        elemento: Integer;
        siguiente: Lista;   
    END;
    Resultado = RECORD
    CASE vacia : boolean OF
        true : ();
        false : (min: integer);
    END;

PROCEDURE BuscarMinimo (lst: Lista; VAR resu: Resultado)
begin
    if lst <> nil then
    begin
        resu.vacia := false;
        resu.min := lst^.elemento;
        while lst^.siguiente <> nil do
        begin
            lst := lst^.siguiente;
            if lst^.elemento < min then
                resu.min := lst^.elemento
        end
    end
    else
        resu.vacia := true

end;

begin
   
 end.


 {Escribir el procedimiento BuscarMinimo que, dada una lista de enteros, devuelve el mínimo de los valores de la lista en el campo
min del parámetro resu y pone el campo discriminante en false, si la lista no es vacía. Si la lista es vacía pone el campo
discriminante en true.}