program Ej18;
CONST
   CANT_SALONES = 20;
   MAX_PIZARRONES = 40;

TYPE
   TSalon = RECORD
                asientos : Integer;
                pizarrones : 1..MAX_PIZARRONES;
                hayProyector : Boolean;
            END;

   TFacultad = ARRAY [1..CANT_SALONES] OF TSalon;

procedure informeSalones (facu: TFacultad);
var
i: integer;
begin
    for i:=1 to CANT_SALONES do
    begin
      WriteLn(facu[i].asientos, ' asientos');
      WriteLn(facu[i].pizarrones, ' pizarrones');
      if facu[i].hayProyector then
      WriteLn('Hay proyector')
      else
      WriteLn('No hay proyector')
    end;
end;

procedure salonMasAsientos (facu: TFacultad; VAR indSalon: Integer; VAR maxAsientos: Integer);
begin
maxAsientos:=0;
for i:=1 to CANT_SALONES do
if facu[i].asientos>maxAsientos then
  maxAsientos:=facu[i].asientos;
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
var i, asientos: Integer
begin
    for i := 1 to CANT_SALONES do
    begin
        asientos:= facu[i].asientos;
        if asientos = 0 then
            primerSalonSinAsientos := i;
    end;
    primerSalonSinAsientos := 0;
end;

begin
    
end.
