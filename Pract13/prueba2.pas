program prueba2;
const MAXTXT = 10(* entero mayor que 0*);

type TLetra = 'A' .. 'Z';
    TTexto = record
        txt : array [1 .. MAXTXT] of TLetra;
        tope : 0 .. MAXTXT;
    end;
    TEstadistica = record
        cantidades : array [TLetra] of 0 .. MAXTXT;
        porcentajes : array [TLetra] of real;
        mas, menos : TLetra;
    end;
var texto : TTexto;
est : TEstadistica;
i : TLetra;
procedure estadisticas (texto : TTexto; var est : TEstadistica);
var i : TLetra;
j, cont : integer;
primera : boolean;
begin
primera := true;
for i := 'A' to 'Z' do
    begin
        cont := 0;
        for j:=1 to texto.tope do
            if texto.txt[j] = i then
                cont:=cont + 1;
        est.cantidades[i]:=cont;
        est.porcentajes[i]:=(cont*100)/texto.tope;
        if (cont > 0) then
        begin
            if primera then
            begin
                est.mas := i;
                est.menos := i;
                primera := false
            end
            else if est.cantidades[est.mas] < cont then
                est.mas := i
            else if est.cantidades[est.mas] = cont then
                if ord(i) < ord(est.mas) then
                   est.mas := i
            else if est.cantidades[est.menos] > cont then
                est.menos := i
            else if est.cantidades[est.menos] = cont then
                if ord(i) < ord(est.menos) then
                    est.menos := i
        end
    end
end;

{
Escribir un procedimiento estadisticas, que dado un texto no vacío texto retorna en est las estadísticas de ese texto, que se
componen por la cantidad y el porcentaje de veces que aparece cada letra, y cuáles son las letras que aparecen más y menos veces
(si es más de una letra, la primera de ellas en orden alfabético).
}
begin
    texto.txt := 'NICO PUTO';
    texto.tope := 9;
    estadisticas(texto, est);
    writeln('Mayor: ',est.mas,' Menor:', est.menos);
    for i := 'A' to 'Z' do
        writeln(i, ': ', est.cantidades[i]:0, ' ', est.porcentajes[i]:0:0, '%');
end.