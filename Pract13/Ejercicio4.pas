program Ejercicio4;
const
    MAX = 15;  {algún valor apropiado}
type
      TComparacion = (mayor, menor, igual);
      TTexto = record
                      nombre : array [1 .. MAX] of Char;
                      tope     : 0 .. MAX;
                   end; 
      arregloNombres = array [1..MAX] of TTexto;

function ComparacionNombres( n1, n2 : TTexto) : TComparacion;
begin
    if n1.tope>n2.tope then
      ComparacionNombres:=mayor
    else if n1.tope=n2.tope then
      ComparacionNombres:=igual
      else
      ComparacionNombres:=menor
end;

function BuscarNombre( n : TTexto; a : arregloNombres) : boolean;
var
res, seguir : Boolean;
inf, sup, medio : 0..MAX+1;
i : Integer;
begin
    seguir := true;
    inf:=1;
    sup:=MAX;
    medio:=(inf+sup) DIV 2;
    while (inf <= sup) and seguir do
    begin
        res:=true;
        if ComparacionNombres(n, a[medio]) = mayor then
            sup := medio - 1
        else if  ComparacionNombres(n, a[medio]) = menor then
            inf := medio + 1
        else
        begin
            i:=1;
            while res and (i <= n.tope) do
            begin
                if n.nombre[i] <> a[medio].nombre[i] then
                    res := false;
                i:=i+1;
            end;
            if res then
                seguir := false
        end;
        medio := (inf + sup) DIV 2
    end;
    BuscarNombre:=res;
end;


begin
        
end.