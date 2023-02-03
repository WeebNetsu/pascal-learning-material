program WhileLoops;

var
x: integer;
begin
    x := 10;

    while x > 1 do
    begin
        writeln(x);
        x := x - 1;
    end;

    repeat // difference is that this will run AT LEAST once
        writeln(x);
        x := x + 1;
    until (x > 9);
end.