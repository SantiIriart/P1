program ashei(output);
var x, y, z : integer;
    procedure calcula(y1 : integer; var y2, y3 : integer);
    var y4 : integer;
        function valor(x1, x2 : integer) : integer;
        var x3 : integer;
        begin
           x3 := x2;
           x1 := x3;
           valor := x1 + x2 + x3
        end;
    begin
        y4 := y2;
        y1 := y3 + y4;
        y2 := y1 + y4;
        y4 := 9;
        y3 := valor(y2,y4)
    end;
begin
     x := 1;
     y := 2;
     z := 3;
     calcula(x,y,z);
     writeln('=',x:1,'=',y:1,'=',z:1)
end.