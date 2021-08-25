program NelsonProPlayer;
Var
k, r, s, t : Integer;
    Begin
        Read(k,r,s,t);
    CASE k OF
        0:
         Begin
            r:=r+1;
            WriteLn('El valor de r es :', r );
            end; 
        1:
         Begin
            s:=s+1;
            WriteLn('El valor de s es :', s);
            end; 
        2, 3 ,4 :
         Begin
            t:=t+1;
            WriteLn('El valor de t es :', t);
            end; 
        else
        WriteLn('Escribe bien fracasado');
    END;
end.