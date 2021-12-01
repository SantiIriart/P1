program Ej2;
type 
    nat = 0..maxint; (* tipo del exponente *)
    
    monomio = record
        coef : integer;
        exp : nat
    end;

    polinomio = ^termino;

    termino = record
        mon:monomio;
        sig: polinomio
    end;
    
    MaybeCoef = record case existeCoef : boolean of
        true : (coef:integer);
        false : ()
    end;

var
    m : monomio;
    arg : real;

function evalMonomio ( m:monomio; arg:real ): real;
var
    i : nat;
    potencia : real;
begin
    potencia := 1;
    for i := 1 to m.exp do
        potencia := potencia * arg;
    evalMonomio := m.coef * potencia
end;

function evalPolinomio ( p:polinomio; arg:real ) : real;
var res : real
begin
    res := 0;
    while p <> nil do
    begin
        res := res + evalMonomio(p^.mon, arg);
        p := p^.sig
    end;
    evalPolinomio := res
end;

procedure coefMonomioGrado ( p:polinomio; exp:nat; var mcoef: MaybeCoef );
begin
    mcoef.existeCoef := false;
    while (p <> nil) and not mcoef.existeCoef do
    begin
        if p^.mon.exp = exp then
        begin
            mcoef.existeCoef := true;
            mcoef.coef := p^.mon.coef
        end
        else
            p := p^.sig
    end;
end;

begin
    readln(m.coef); //3(4)^2
    readln(arg);
    readln(m.exp);
    write(evalMonomio(m, arg):0:0)
end.



{
    parte a : Escribir una función evalMonomio que dado un valor real arg retorna el resultado de evaluar el monomio. No se puede utilizar la
función exp, la solución debe ser un algoritmo iterativo.

    parte b : Escribir una función evalPolinomio, que dados un polinomio p y un valor real arg, retorna el resultado de evaluar p en arg. Si el
polinomio es vacío el resultado es 0.

    parte c : Escribir un procedimiento coefMonomioGrado, que dados un polinomio p y un exponente exp retorna, si existe, el coeficiente del
monomio de grado exp. Se puede asumir que si existe, hay un solo monomio de ese grado.
}