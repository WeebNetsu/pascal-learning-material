program Functions;

// Function is a procedure, but it can return data
function sum(num1, num2: integer): integer;
begin
    // this variable will be returned because it has the function name
    sum := num1 + num2;
end;

function isBig(num: integer): boolean;
begin
    isBig := false; // can set return value from start if not sure something will be assigned

    if num > 1000 then
    begin 
        isBig := true;
    end;
end;

function res(make: boolean): integer;
var
    result: integer; // recommmended to create result variable
begin
    result := 50;

    if make then
    begin
        result := result + 100;
    end
    else
    begin
        result := result - 100;
    end;

    // recommended to create a result varibale and then pass it
    // into end return value
    res := result;
end;

var
    ans : integer;
begin
    ans := sum(19, 4);
    writeln(ans);

    writeln(isBig(600));
    writeln(isBig(6000));

    writeln(res(false));
    writeln(res(true));
end.