Program CaseStatements;

Var 
    num: integer;
    letter: char;
Begin
    num := 1004;
    letter := ';';

    case num of // basic case statement
        18: begin // allows you to add begin/end for larger execution
            writeln('num is 18');
            writeln('Quite cool!');
        end;
        // can also be a oneliner!
        49: writeln('num is 49'); // this is true, so will execute
        // below is a way you can include multiple values
        76, 100, 120: writeln('num is 76, 100 OR 120');
        1000 .. 2000: writeln('number is between 1000 and 2000');
    else // optional, but great incase none of the above get's triggered
        begin
            writeln('number does not exist in allowed cases.');
        end;
    end;

    case letter of
        // can also be done with letters
        'A' .. 'Z': writeln('Capital case letter!');
        'a' .. 'z': begin
            writeln('lowercase letter!');
            case num of // nested case statement
                1 .. 10: writeln('AND num is between 1 and 10!!');
            end;
        end;
        else
        begin
            writeln('Not a letter');
        end;
    end;
End.
