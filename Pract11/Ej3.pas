program Ej3;
CONST 
MAX = 30;
CENT = '.';
Type
Cadena = RECORD
                caracteres : ARRAY [1..MAX] OF Char;
                largo : 0..MAX;
            END;
var
cad1 : cadena;
procedure cargarCadena(VAR cad:Cadena);
var
i : Integer;
car : char;
begin
    i:=0;
    read(car);
    while (car <> CENT) AND (i<=MAX) do
    begin
        cad.caracteres[i] := car;
        i := i + 1;
        read(car)
    end;
    cad.largo := i;
end;

function contarOcurrencias(frase : Cadena; letra : char) : Integer;
var
    i, cont : Integer;
    aux : Char;
begin
    cont:= 0;
    for i:=1 to frase.largo do
        begin
        aux := frase.caracteres[i];
        If letra = aux then
        cont:= cont + 1;
        end;
    contarOcurrencias:=cont;
end;

function existeVocal(cad : Cadena) : Boolean;
var i : integer;
begin
    existeVocal := False;
    for i := 1 to cad.largo do
        case cad.caracteres[i] of
            'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U' : existeVocal := True
        end
end;

begin
    cad1.caracteres := 'hlkIJ';
    cad1.largo := 5;
    write(existeVocal(cad1));

end.