program Ej8;
var letra, ant : Char;
begin
    Write('Ingrese una cadena de texto ');
    Read(letra);
    ant:=' ';
    while letra <> '$' do
        begin
            if ant = letra then
            begin
              write(letra, ant, ' ');
            end;
             ant:=letra;
            read(letra)
        end;
end.

