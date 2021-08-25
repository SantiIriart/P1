program prueba;
var
   i,j : integer;
begin
   i:= 5;
   while i > 0 do
   begin
      for j:= i downto 1 do
           write(j);
      writeln(0);
      i:= i - 2;
   end;
end.