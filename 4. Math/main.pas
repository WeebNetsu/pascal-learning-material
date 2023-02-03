program MathProgram;

var
    x: integer;
    y: double;
begin
    writeln(1 + 5); // add
    writeln(9 - 15); // subtract
    x := 9;
    y := x / 3; // can do math in variables
    writeln(y); // divide
    writeln(9 div 3); // divide, but will return an integer and not a double
    writeln(3 * 10); // times
    writeln(10 mod 3); // modulo
end.