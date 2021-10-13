program ej2;
CONST
    MAXPERSONAS = 1000;
    MAXCAD      = 20;

TYPE
   Cadena = RECORD
                letras : ARRAY [1..MAXCAD] OF Char;
                largo : 0..MAXCAD;
            END;
   Fecha = RECORD
               dia : 1..31;
               mes : 1..12;
               anio : 0..MAXINT; 
           END;
   UnaPersona = RECORD
                    nombre : Cadena;
                    FechNac : Fecha;
                    IndMadre, IndPadre : 0..MAXPERSONAS;
                END;
   Familia = RECORD
                 pers : ARRAY[1..MAXPERSONAS] OF UnaPersona;
                 tope : 0..MAXPERSONAS;
             END;

var
cad, cad2 : Cadena;
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var
i : integer;
igual : boolean;
begin
    igual := True;
    if cad1.largo <> cad2.largo then
        igual := False
    else
        for i := 1 to cad1.largo do
            if cad1.letras[i] <> cad2.letras[i] then
                igual := False;
    if igual then
        cadenasIguales := True
    else
        cadenasIguales := False
end;

 procedure desplegarCadena (cad: Cadena);
 var
 i : Integer;
 begin
   for i:=1 to cad.largo do
     Write(cad.letras[i]);
     WriteLn; 
 end;

procedure antepasados (usted : Cadena; historia : Familia);
var
    i : integer;
    pariente : UnaPersona;
begin
    for i := 1 to historia.tope do
        if cadenasIguales(usted, historia.pers[i].nombre) then
        begin
            pariente := historia.pers[historia.pers[i].IndMadre];
            writeln('Madre');
            desplegarCadena('Nombre: ',pariente.nombre);
            writeln('Fecha de nacimiento: ', pariente.FechNac.dia, '/', pariente.FechNac.mes, '/', pariente.FechNac.anio);
            WriteLn;

            pariente := historia.pers[historia.pers[i].IndPadre];
            writeln('Padre');
            desplegarCadena('Nombre: ',pariente.nombre);
            writeln('Fecha de nacimiento: ', pariente.FechNac.dia, '/', pariente.FechNac.mes, '/', pariente.FechNac.anio)
        end

end;

begin
    cad.letras := 'Hola';
    cad.largo := 4;
    cad2.letras := 'Hola2';
    cad2.largo := 5;
    desplegarCadena(cad);
end.