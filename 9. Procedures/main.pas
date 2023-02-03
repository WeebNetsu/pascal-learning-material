program Procedures;

// procedure is used to execute a block of code
procedure sayQuickHello();
begin
    writeln('Hello World');
    writeln('And hello to you too!');
end;

// the can take in arguments
procedure sayHello(userName, favColor: String; age: integer);
begin
    writeln('Hello ', userName, ', you are ', age, ' years old and your fav color is ', favColor);
end;

procedure printSum(num1, num2: integer);
var
    ans: integer; // can also have local variables
begin
    ans := num1 + num2;

    writeln(ans);
end;

begin
    sayQuickHello();
    sayHello('Jack', 'red', 24);
    printSum(5, 10);
end.