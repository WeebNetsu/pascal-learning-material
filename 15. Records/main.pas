
Program Records;

Type Users =   Record
    // a record is like JSON in JS, Dict in Python or Struct in Go
    fullName:   string;
    age:   integer;
    height:   double;
    // basically a string, normal strings not allowed
    hobby:    array[1..10] Of char;
End;

Var 
    user1, user2:   Users;
Begin
    user1.fullName := 'Mike Zeffry';
    user1.age := 19;
    user1.height := 1.8;
    user1.hobby := 'sleeping';

    writeln('Name: ', user1.fullName);
    writeln('Age: ', user1.age);

    // with allows us to not have to use 'user2' everytime
    // we want to modify something on the user
    With user2 Do
        Begin
            fullName := 'Jack Wowza';
            // same as user2.fullName := 'Jack Wowza' (thanks to 'with')
            age := 29;
            height := 1.63;
            hobby := 'driving';

            writeln('Height: ', height);
            writeln('Hobby: ', hobby);

            // with only uses user2, so user1 still needs to be
            // appended to be used
            writeln('user1 height: ', user1.height);
        End;
End.

// run with > fpc main.pas && ./main
