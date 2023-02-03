program inheritance;

// Now let us talk about inheritted objects
// I will use the Rectangle example we used

type
    Rectangle = object
    private
        length, width: Integer;
    public
        procedure setlength(l: Integer);
        function getlength(): Integer;

        procedure setwidth(w: Integer);
        function getwidth(): Integer;

        procedure draw;
end;

TableTop = object(Rectangle) // tabletop function inherits from
// parent object
private
    material: string;
public
    function getmaterial(): string;
    procedure setmaterial(m: string);
    procedure displaydetails;
    procedure draw;
end;

var
    tt1: TableTop; // assign inherited object to variable
    // the other variables/functions are not listed as they have
    // been inherited from parent object

procedure Rectangle.setlength(l: Integer);
begin
length := l;
end;

procedure Rectangle.setwidth(w: Integer);
begin
width := w;
end;

function Rectangle.getlength(): Integer;
begin
getlength:= length;
end;

function Rectangle.getwidth(): Integer;
begin
getwidth:= width;
end;

procedure Rectangle.draw;
var
    i, j: Integer;

begin
for i:= 1 to Length do
begin
    for j:= 1 to width do
        Write('*');
    WriteLn;
end;
end;

function TableTop.getmaterial(): string;
begin
    getmaterial := material; // gets material and makes it material
end;

procedure TableTop.setmaterial(m: string);
begin
    material := m; // gives material to setmaterial
end;

procedure TableTop.displaydetails;
begin
    writeln('Table Top: ', self.getlength(), ' by ', self.getwidth());
    WriteLn('Material: ', self.getmaterial());
    // this procedure is running on object TableTop, self indicates
    // the current object being worked on
end;

procedure TableTop.draw();
var
    i, j: Integer;
begin
    for i:= 1 to Length do
    begin
    for j:= 1 to width do
        Write('*');
    WriteLn;
    end;
    WriteLn('Material: ', material);
end;

begin
    tt1.setlength(3);
    tt1.setwidth(7);
    tt1.setmaterial('Wood');
    tt1.displaydetails();
    WriteLn;
    WriteLn('Calling the Draw method');
    tt1.draw();
    // calling TableTop's draw method calls into effect Tabletop's draw
end.