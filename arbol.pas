program arbol;
var calif: char;
begin
    write('Ingresa la nota: ');
    readln(calif);
    case calif of
        'A': WriteLn('Trabajo excelente.');
        'B', 'C': WriteLn('Buen trabajo.');
        'D', 'F': WriteLn('Trabajo deficiente.');
        else
        WriteLn('Nota invalida.');
    end;
end.