program Ej4;
VAR a, b, n, ind, contador, mayor, menor:Integer;
begin
    Writeln('Ingrese los valores del intervalo a,b y de n');
    ReadLn(a,b,n);
    if a>b then
        begin
            mayor := a;
            menor := b    
        end
    else
        begin
            mayor := b;
            menor := a
        end;
    ind := n;
    contador := 2;
    while ind <= mayor do
        begin
            if ind >= menor then
                write(ind, ' ');
            ind := n * contador;
            contador := contador + 1;
        end;
end.