program Ejercicio3;
const
    MAXN          = 20;  {algún valor apropiado}
    MAXL           = 10;  {algún valor apropiado}
type
      TTexto = record
                      nombre : array [1 .. MAXN] of Char;
                      tope     : 0 .. MAXN;
                   end; 
     TEstado = (nuevo, usado);

     TLibro = record
                    titulo : TTexto;
                    anio   : Integer; 
                    case estado : TEstado of
                     nuevo :  ( proveedor : TTexto); 
                     usado :  ( clasif : 1 .. 10)
                  end;

     TEstanteria = record
                            libro : array [1 .. MAXL] of TLibro;
                            tope : 0 .. MAXL;
                         end;

     TBiblioteca = array [ 'A' .. 'Z'] of TEstanteria;

function IgualesTitulos( t1, t2 : TTexto ) : boolean;
var
    res : Boolean;
    i : Integer;
begin
    res := True;
    i:=1;
    if t1.tope = t2.tope then
        while res AND (t1.tope>=i) do
        begin
            if t2.nombre[i]<>t1.nombre[i] then
                res:=False;
            i:=i+1
        end;
    IgualesTitulos:=res
end;

function BuscarLibro( t : TTexto; a : Integer; e: TEstado; b : TBiblioteca) : boolean;
var 
    res : Boolean;
    i : Integer;
    estante : TEstanteria;
begin
    res:= True;
    estante:= b[t.nombre[1]];
    i:= 1;
    while res AND (estante.tope>=i) do
    begin
        with estante.libro[i] do
            if not(IgualesTitulos(t , titulo ) AND (a=anio) AND (e=estado)) then
                res:=False;
        i:= i+1;
    end;
    BuscarLibro:=res;
end;

procedure BuscarLibrosAnio( a : Integer; b : TBiblioteca); 
var lista : TEstanteria;
    i : Char;
    j, k, l, m : Integer;
    libro : TLibro
begin
    lista.tope := 0;
    l := 0;
    m := 0;
  for i:='A' to 'Z' do
    l := l + m;
    while lista.tope - l < b[i].tope do
        for j := 1 to b[i].tope do
            libro := b[i].libro[j];
            if libro.anio > a then
                if lista.tope = 0 then
                begin
                    lista.tope := lista.tope + 1;
                    lista.libro[lista.tope] := libro;
                end
                else
                begin
                    if lista.libro[lista.tope].titulo.tope <= libro.titulo.tope then
                        top := lista.libro[lista.tope].titulo.tope
                    else
                        top := libro.titulo.tope;
                    res := true;
                    for k := 1 to top do
                        if ord(lista.libro[lista.tope].titulo.nombre[k]) > ord(libro.titulo.nombre[k]) then
                            res := false;
                    if res then       
                    begin                   
                        lista.tope := lista.tope + 1;
                        m := m + 1
                    end;
                    lista.libro[lista.tope] := libro;
                end

end;   

begin
  
end.