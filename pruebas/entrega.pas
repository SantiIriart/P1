program entrega;

var izq, der, delta  : real;
    resultado : integer;

function f(x : real) : real;

var resultado : real;

begin
        resultado := x * sqrt( 2 + sin((Pi * x + 25)/ 10));
        f := resultado;

end;

function sumaRiemann(izq, der : real; subintervalos : integer) : real;

var 
salida, baserectangulo, alturarectangulo, arearectangulo : real;
i : Integer;
 

begin
        baserectangulo := (der -izq) / subintervalos;
        salida := 0;

       for i:=0 to subintervalos-1 do
            begin
                    alturarectangulo := f(izq);
                    arearectangulo := alturarectangulo * baserectangulo;
                    salida := salida + arearectangulo;
                    izq := izq + baserectangulo;
            end;
        
        sumaRiemann := salida;
            
end;

function riemannHasta(izq, der : real; delta : real) : integer;

var diferencia, suma1, suma2: real;
    contador, sub : integer;
    aver : boolean;

begin
        sub := 1;
        contador := 0;
        repeat 
                suma1 := abs(sumaRiemann(izq, der, sub));
                WriteLn(suma1:0:4);
                suma2 := abs(sumaRiemann(izq, der, sub+1));
                writeln(suma2:0:4);

                if suma1 > suma2 then
                    begin
                        diferencia := suma1 - suma2;
                        writeln('dif',diferencia:0:4);
                        contador := contador + 1;
                        writeln('contador', contador);
                               sub := sub+1;
                    end
                else 
                    begin
                        diferencia := suma2 - suma1;
                        writeln('dif',diferencia:0:4);
                        contador := contador + 1;
                        writeln('contador', contador);
                               sub := sub+1;
                    end;
                

                
                aver := diferencia <= delta;
                writeln(aver);

        until (diferencia <= delta) and (sub > 1);

        riemannHasta := contador;
       
end;

begin
    
        readln(izq, der, delta);
        resultado := riemannHasta(izq, der , delta);
        writeln('resultado', resultado);

end.