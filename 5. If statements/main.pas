// NOTE: Take note where semicolons gets used in this tutorial
program IfStatement;

var
    age: integer;
    open: boolean;
begin
    if True then // if (condition) then
    begin // begin and end to signify a block
        writeln('this will always execute');
        writeln('this will always execute 1');
        writeln('this will always execute 2');
    end;

    // this is the same as the above, but will only execute one line as part of the if statement
    if 5 > 2 then writeln('I will execute if 5 is bigger than 2');

    if 5 < 2 then // if 5 is less than 2
    begin
        writeln('5 is less than 2');
    end
    else // if the first if statement doesn't execute, execute this
    begin
        writeln('5 is');
        writeln('more than');
        writeln('2');
    end;

    // NOTE: we use '=' and NOT '==' in Pascal
    // the below is same as above, but only the first lines will be excuted as part of the if statement
    if 'Jack' = 'Nick' then writeln('Names are the same')
    else writeln('Names are not the same');

    // more exist, such as <> (not equal), >=, <=

    age := 19;
    open := true; // is the bar open
    if (open) and (age >= 18) then // 'and' to compare multiple conditions
    begin
        writeln('You may enter');
    end
    else if not open then // else if and not
    begin
        writeln('Bar is currently closed');
    end
    else
    begin
        writeln('You may not enter');
    end;

    // or statement
    if (age > 17) or (age < 65) then writeln('You may enter!!');

    if age >= 18 then
    begin
        // nested if statement
        if open then
        begin
            writeln('Bar is open');
            writeln('You may enter!');
        end
        else
        begin
            writeln('You may enter, however the bar is not open');
        end;
    end;
end.