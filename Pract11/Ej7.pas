program Ej7;
CONST
    MAXPIRATAS = 1000;   (* Limite de piratas que pueden vivir en la isla. *)
    MAXASALTOS = 50;     (* Limite de asaltos a los que estadisticamente puede sobrevivir un pirata. *)
    MAXDIGITOSCI = 8;     (* Cantidad de digitos para almacenar un numero de cdula. *)
    MAXCADENA = 30;     (* Cantidad de letras del nombre *)

TYPE
   TipoCadena = RECORD
                    letras: ARRAY [1..MAXCADENA] OF Char;
                    tope: 0 .. MAXCADENA
                END;

   TipoCI = ARRAY [1..MAXDIGITOSCI] OF '0'..'9';

   TipoFecha = RECORD
                   dia: 1..31;     
                   mes: 1..12;     
                   anio: 0..MAXINT;
               END;

   TipoAsalto = RECORD
                    nombre_barco: TipoCadena;             (* Nombre del barco asaltado *)
                    fecha: TipoFecha;                     (* Fecha del atraco *)
                    botin: Integer;                        (* Suma de dinero obtenida para la banda *)
                END;

   ConjuntoAsaltos = RECORD (* Contiene información sobre los asaltos  *)
                         asaltos: ARRAY [1..MAXASALTOS] OF TipoAsalto;
                         tope: 0..MAXASALTOS
                     END;

   TipoCausaMuerte = (asesinato, enfermedad, accidente);

   TipoPirata = RECORD
                    nombre: TipoCadena;          (* Nombre del pirata *)
                    CI: TipoCI;                  (* Cédula de identidad *)
                    CASE estaVivo: BOOLEAN OF                (* Indica el estado vital actual del pirata *) 
                          TRUE: (asaltos: ConjuntoAsaltos);  (* Contiene información sobre los asaltos  *)
                                                             (* realizados por el pirata               *)  
                          FALSE: (causaMuerte: TipoCausaMuerte; (* Contiene datos relativos a la muerte *)
                                  fechaMuerte: TipoFecha)       (* del pirata *)
                END;

   Banda = RECORD
               pirata: ARRAY [1..MAXPIRATAS] OF TipoPirata;     (* Contiene información de los piratas  *)
               tope: 0..MAXPIRATAS                              (* Indica cantidad de piratas *)
         END;

     ConjuntoCIs = RECORD
                     cedulas: ARRAY [1..MAXPIRATAS] OF TipoCI; (* Arreglo de cedulas *)
                     tope: 0..MAXPIRATAS                       (* Cantidad de cedulas en el array *)
                 END;
FUNCTION dinero_obtenido_por_pirata (pirata: TipoCI; anio: Integer; b:Banda) : Integer;
var i, j, acumulado : Integer;
pirataActual : TipoPirata;
asaltoActual : TipoAsalto;
begin
    acumulado := 0;
    for i:=1 to b.tope do
    begin
        pirataActual := b.pirata[i];
        if pirataActual.CI = pirata then
            if pirataActual.estaVivo then
                for j := 1 to pirataActual.asaltos.tope do
                begin
                    asaltoActual := pirataActual.asaltos.asaltos[j];
                    if asaltoActual.fecha.anio = anio then
                        acumulado := acumulado + asaltoActual.botin;
                end
    end;
    dinero_obtenido_por_pirata := acumulado;
end;
PROCEDURE hallar_ganadores (piratas:Banda; anio:INTEGER; VAR piratas_merecedores: ConjuntoCIs);
var
    i, mayor, tope, dinero : integer;
    pirata : TipoPirata;
    ultimosMayores : ConjuntoCIs;
begin
    mayor := 0;
    tope := 0;
    for i := 1 to piratas.tope do
    begin
        pirata := piratas.pirata[i];
        if pirata.estaVivo then
        begin
            dinero := dinero_obtenido_por_pirata(pirata.CI, anio, piratas);
            if dinero > mayor then
            begin
                mayor := dinero;
                ultimosMayores.cedulas[1] := pirata.CI;
                ultimosMayores.tope := 1;
            end
            else if dinero = mayor then
            begin
                ultimosMayores.tope := ultimosMayores.tope + 1;
                ultimosMayores.cedulas[ultimosMayores.tope] := pirata.CI
            end
        end
    end;
    piratas_merecedores.tope := ultimosMayores.tope;
    for i := 1 to ultimosMayores.tope do
        piratas_merecedores.cedulas[i] := ultimosMayores.cedulas[i];
end;


begin
  
end.