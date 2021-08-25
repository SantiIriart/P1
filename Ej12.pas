program Ej12;
var costo, peso: Real;
begin
costo:=0.22;
Write('Inserte peso de la carta ');
Read(peso);
  if peso<=1 then
    Write(costo:4:2)
  else
    begin
    costo:=costo+(0.17*peso);
      Write('el costo es: $',costo:4:2);
    end
end.