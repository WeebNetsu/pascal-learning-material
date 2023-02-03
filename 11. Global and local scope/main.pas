program Procedures;
var age: integer; // global scope variable, can be used everywhere
// the can take in arguments
procedure sayHello(favColor: String);
var 
    uName : String; // local scope variable, can only be used inside
    // this function/procedure
    age: integer;
begin
    age := 20; // modifies LOCAL SCOPE variable
    uName := 'Max';
    writeln('Hello ', uname, ', you are ', age, ' years old and your fav color is ', favColor);
end;

procedure birthday();
begin
    age := age + 1; // modifies LOCAL SCOPE variable
end;

var
    bestColor: string;
begin
    age := 29; // modifies global scope variable
    bestColor := 'yellow'; // modifies local scope variable

    sayHello(bestColor);
    birthday();

    writeln(age); // will be 30, since we modified the global scope age in birthday
end.