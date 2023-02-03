program Procedures;

var
    userName: string;
    age: integer;
begin
    writeln('Please enter your name:');
    readln(userName);

    writeln('Please enter your age:');
    readln(age); // can take in an integer no problem

    writeln('Your name is ', userName, ' and you are ', age, ' years old')
end.