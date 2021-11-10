Program Iteracion;
const
   espacio  = ' ';
   estrella = '*';
   N	    = 6;
var
   i,j : integer;
begin
   i:= 1;
   repeat
       for j:=  (N-i) downto 1 do
            write(espacio);
       j:= 1;
       while (j<=i) do
       begin
           write(estrella); 
           j:= j+1;
        end;
        writeln;
        i:= i+1;
    until i> N
end.