program objects;

// lets take for example, a car(object), a car has
// working_parts(member functions) and those working
// parts can be recalled upon will, and a working part
// can run(process) a designated_area(member variable) 
// that is within that car

// now, replace the words before the brackets with the 
// words in the brackets, then ditch the brackets, and 
// the former word that was before the bracket

type
    Rectangle = object // used to define object type
    private // the members are only accessible in the 
    // current unit
        length, width: Integer;
    public // the members can be used by other units
        procedure setlength(l: Integer);
        function getlength(): Integer;

        procedure setwidth(w: Integer);
        function getwidth(): Integer;

        procedure draw;
end;

var
    r1: Rectangle; // assign object to variable
    pr1: ^Rectangle; // pointer of the object

procedure Rectangle.setlength(l: Integer);
begin
length := l; // the variable of the length(member variable)
end;

procedure Rectangle.setwidth(w: Integer);
begin
width := w; // the variable of the width(member variable)
end;

function Rectangle.getlength(): Integer;
begin
getlength:= length; // gets the set length(member function)
end;

function Rectangle.getwidth(): Integer;
begin
getwidth:= width; // gets the set width(member function)
end;

procedure Rectangle.draw;
var
    i, j: Integer;

begin
for i:= 1 to Length do // for i:= to given length
begin
    for j:= 1 to width do // for i:= to given width
        Write('*');
    WriteLn;
end;
end;

begin
r1.setlength(3); // given length
r1.setwidth(7); // given width

WriteLn('Draw a rectangle:', r1.getlength(), ' by ' , r1.getwidth());
// the above code will return the variables as given values
r1.draw; // this draws the rectangle using the for loop
new(pr1);
pr1^.setlength(5);
pr1^.setwidth(4);

WriteLn('Draw a rectangle:', pr1^.getlength(), ' by ' ,pr1^.getwidth());
pr1^.draw;
Dispose(pr1);
end.
