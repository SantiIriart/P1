program Ejercicio9;
var k,t,r,s : Integer;
begin
    WriteLn('Ingrese valor de k ');
    ReadLn(k);
    t := 4;
    s := 2;
    r := 3;
  Case  k OF
    
  0: Begin 
  r:=r+1;
  WriteLn('El valor de r es: ', r )
  end;
  1:Begin 
   s:=s+1;
  WriteLn('El valor de s es: ', s )
  end;
  2,3,4: Begin 
  t:=t+2;
  WriteLn('El valor de t es: ', t )
  end; 
  else
  WriteLn('Elegi bien el numero, samu')
  END
end.