program Ej2;
const MAX_AUTOS = 20; (* algún valor apropiado *)
type
    Hora = record
    hora : 0..23;
    min : 0..59;
    seg : 0..59
    end;
    Lugar = record
        matricula: Integer;
        case ocupado : boolean of
        true : (hora_ingreso : Hora);
        false : ()
    end;
    Parking = array [1 .. MAX_AUTOS] of Lugar;

function posteriorHora(h1, h2 : Hora) : Boolean;
var res : Boolean;
begin
    if h1.hora = h2.hora then
        if h1.min = h2.min then
            if h1.seg <= h2.seg then
                res := false
            else
                res := true
        else
            if h1.min < h2.min then
                res := False
            else
                res := true
    else
        if h1.hora < h2.hora then
            res := false
        else
            res := true;
    posteriorHora := res
end;

function posteriorHora2(h1, h2 : Hora) : Boolean;
var
res : Boolean;
begin
res:=False;
if h1.hora > h2.hora then
begin
    res:=True;
end
    else if h1.min > h2.min then
    begin
        res:=True;
    end
        else if h1.seg > h2.seg then
        begin
            res:= True;
        end;
posteriorHora2:= res;
end;

function ultimoIngreso(park : Parking) : Integer;
var 
i, res : Integer;
ultimo, actual : Lugar;
inicio : boolean;
begin
    inicio := true;
    res := -1;
    for i := 1 to MAX_AUTOS do
    begin
        actual := park[i];
        if actual.ocupado then
        begin
            if inicio then
            begin
                inicio := false;
                ultimo := actual;
            end
            else
                if posteriorHora2(actual.hora_ingreso, ultimo.hora_ingreso) then
                    ultimo := actual;
            res := ultimo.matricula
        end
    end;
    ultimoIngreso := res
end;

begin
  
end.


{
    Donde cada celda del arreglo Parking representa un lugar reservado para un vehículo. Para cada lugar se tiene la matrícula (de
tipo Integer) del vehículo asignado y, en caso de estar actualmente ocupado, la hora en que ingresó. Como la entrada al Parking es
estrecha, no pueden ingresar dos vehículos exactamente a la misma hora.


parte a: Escribir la función posteriorHora, que dadas dos horas h1 y h2, determina si h1 es posterior a h2

Parte b:
Escribir la función ultimoIngreso, que devuelve la matrícula del último auto que ingresó al parking. Si todos los lugares están
libres retorna -1.

}