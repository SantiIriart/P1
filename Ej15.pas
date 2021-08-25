program Ej15;
var
    hexa: string;
    a, b, c, entero: integer;
begin
    readln(hexa);
    
    case hexa[1] of
        'A', 'a': a:=10;
        'B', 'b': a:=11;
        'C', 'c': a:=12;
        'D', 'd': a:=13;
        'E', 'e': a:=14;
        'F', 'f': a:=15;
        else
            a:=ord(hexa[1])-48;
    end;
    case hexa[2] of
        'A', 'a': b:=10;
        'B', 'b': b:=11;
        'C', 'c': b:=12;
        'D', 'd': b:=13;
        'E', 'e': b:=14;
        'F', 'f': b:=15;
        else
            b:=ord(hexa[2])-48;
    end;
    case hexa[3] of
        'A', 'a': c:=10;
        'B', 'b': c:=11;
        'C', 'c': c:=12;
        'D', 'd': c:=13;
        'E', 'e': c:=14;
        'F', 'f': c:=15;
        else
            c:=ord(hexa[3])-48;
    end;
    entero:=a*sqr(16)+b*16+c;
    write(entero)
end.