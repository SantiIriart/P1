program prueba;

TYPE
	PunteroInt = ^integer;
	PunteroChar = ^char;
  VAR
	apun1, apun2 : PunteroInt;
	apun3, apun4 : PunteroChar;

begin
  new(apun3);
   new(apun1);
   apun3^ := 'Z';
   apun2 := NIL;
   apun4 := NIL;
   IF (apun3 <> NIL) AND (apun2 = NIL) THEN
	   writeln ('A');
   IF apun3^ = 'Z' THEN
	   writeln ('Z')
   ELSE
   	   writeln ('X')
end.