program ark;
VAR val : Integer;
begin
  val := 3;
 CASE val OF
    1: writeLn ('uno');
    2: writeLn ('dos')
 END;
 writeLn ('Despues del CASE');
end.