program mate;
var num : Integer;
begin
Write('Ingrese un numero : ');
Read(num);
while num <> 4 do
begin
if (num mod 2) = 0 then
begin
num:= num div 2;
write(num)
end
else
begin
num:= 3*(num)+1;
Write(num)
end
end
end.