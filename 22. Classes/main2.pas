program construct;

{$mode objfpc}
{$m+}

type 
    Books = class
    protected // members in here can be called from other classes in same unit
        title : String;
        price : real;
    
    public // members can be used by other units
        constructor create(t: string; p: real);
        

        procedure setTitle(t: string); // sets title for a book
        function getTitle(): string; // retrieves title

        procedure setPrice(p: real); // sets price for book
        function getPrice(): real; // retrieves price

        procedure Display(); // display details of a book
    end;

var
    physics, chemistry, maths: Books; // variables of Books type

constructor Books.create(t: string; p: real);
begin
  title := t;
  price := p;
end;

procedure Books.setTitle(t: String);
begin
  title := t;
end;

function Books.getTitle(): String;
begin
  getTitle := title;
end;

procedure Books.setPrice(p: real);
begin
  price := p;
end;

function Books.getPrice(): real;
begin
  getPrice := price;
end;

procedure Books.Display();
begin
  WriteLn('Title: ', title);
  WriteLn('Price: ', price:5:2);
end;

begin
  physics := Books.Create('Physics for High School', 10);
  chemistry := Books.Create('Avdanced Chemistry', 15);
  maths := Books.Create('Algebra', 7);

  physics.Display;
  chemistry.Display;
  maths.Display;
end.
