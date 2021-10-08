program ej17;
CONST
    CANT_LETRAS = 20;
    CANT_ARTICULOS = 10;

TYPE
    TIdioma = (ay, eo, es);

    TFecha = RECORD
                dia : 1..31;
                mes : 1..12;
                anio : 2001..9999 (* La wikipedia comienza en 2001 *)
            END;

    TNombre = ARRAY [1..CANT_LETRAS] OF Char;

    TArticulo = RECORD
                    nombre : TNombre;
                    idioma : TIdioma;
                    visitas : Integer;
                    ultima_act : TFecha;
                END;

    Wikipedia = ARRAY [1..CANT_ARTICULOS] OF TArticulo;

function EsPosterior (f1, f2 : Tfecha) : boolean;
var post : Boolean;
begin
    if f1.anio>f2.anio then
            post:=true
        else if f1.anio<f2.anio then
            post:=false
        else if f1.mes>f2.mes then
            post:=true
        else if f1.mes<f2.mes then
            post:=false
        else if f1.dia>f2.dia then
            post:=True
        else
            post:=False;
    EsPosterior:=post
end;

procedure ArticuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var 
    i : 1..CANT_ARTICULOS;
    {fecha : TFecha;}
begin
    {fecha.dia := 1;
    fecha.mes := 1;
    fecha.anio := 2001;}
    art.ultima_act.dia := 1;
    art.ultima_act.mes := 1;
    art.ultima_act.anio := 2001;
    for i := 1 to CANT_ARTICULOS do
        if (wiki[i].idioma = idioma) and EsPosterior(wiki[i].ultima_act, art.ultima_act) then
            {fecha := wiki[i].ultima_act}
            art := wiki[i]
end;

begin
    
end.