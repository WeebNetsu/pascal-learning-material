{$mode objfpc} // directive to be used for defining classes
{$m+} // directive to be used for using constructor

// the directives are NOT subject to be inserted only 
// at the beginning of the program

program gClass; // the g class is a superb car right!!?

// classes are defined almost the same way as an object
// but classes are pointers to an object rather than
// the object itself, unlike objects, in classes
// you also have to manually allocate memory for a class
// using the constructor method, then the destructor 
// method to release the memory

// the example in here will be similar to the one found
// in the objects chapter, with a few differences

type
    Rectangle = class // used to indicate the class type
    // 'Rectangle = abstract class' an abstract class can only be
    // inherited. When inheriting an abstract class, all the methods
    // of the abstract class must be defined by the child,and must also
    // have the same visibility as the parent


    private // members can only be called by methods in same class
        length, width: Integer;
    
    public // this defines the visibility of a method
    // members can be used by other units
        constructor create(l, w: Integer); // default constructor
        procedure setlength(l: Integer);
        function getlength(): Integer;

        procedure setwidth(w: Integer);
        function getwidth(): Integer;

        procedure draw;
end;
var
    r1: Rectangle;

constructor Rectangle.create(l, w: Integer);
begin
  length := l;
  width := w;
end;

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
  getlength := length;
end;

function Rectangle.getwidth(): Integer;
begin
  getwidth := width
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

begin
  r1 := Rectangle.create(3, 7); // assign memory size
  // the above code will pass in the values into the variables
  WriteLn(' Draw Rectangle: ', r1.getlength(), ' by ' , r1.getwidth());
  r1.draw; // draws rectangle using created memory

  r1.setlength(4);
  r1.setwidth(6);
  WriteLn(' Draw Rectangle: ', r1.getlength(), ' by ', r1.getwidth());
  r1.draw; // draws rectangle using passed in values
end.
