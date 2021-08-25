program Ej6;
VAR 
    num, suma, cont, mayor, menor : Integer;
    prom : Real;
begin
    suma := 0;
    cont := 0;
    WriteLn('ingrese numeros ');
    Read(num);
    while num <> -1 do
        begin
            suma:=suma+num;
            cont:=cont+1;
            if cont = 1 then
                begin
                    mayor := num;
                    menor := num
                end
            else
                begin
                    if num > mayor then
                        mayor := num;
                    if num < menor then
                        menor := num
                end;
            Read(num)
        end;
    prom:=suma/cont;
    WriteLn('La suma es : ', suma:0, ' y el promedio es : ', prom:5:2, '. el mayor es: ', mayor:0, ' el menor es: ', menor:0)
end.