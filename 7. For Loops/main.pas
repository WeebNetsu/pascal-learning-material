program ForLoops;

var
    i : integer;
begin
    for i := 1 to 10 do // basic for loop, we set i and let it run until 10
    begin
        writeln(i, ' Hello(s)!'); // we can use i inside the loop
    end;

    for i := 30 downto 20 do // counts downwards instead of upwards
    begin
        if i = 25 then
            continue; // this will skip an iteration

        if i = 22 then
            break; // will end the loop early

        writeln(i)
    end;
end.