program inheritance;

{$mode objfpc}
{$m+}

type
   Books = Class 
   protected 
      title : String; 
      price: real;
   
   public
      constructor Create(t : String; p: real); //default constructor
      
      procedure setTitle(t : String); //sets title for a book
      function getTitle() : String; //retrieves title
      
      procedure setPrice(p : real); //sets price for a book
      function getPrice() : real; //retrieves price
      
      procedure Display(); virtual; // display details of a book
      // we will talk more about methods as we go
end;

// creating a derived class

type
    Novels = Class(Books) // inherits from the Books class
    private // members can only be called by methods in same class
        author: String;
    
    public // members are accessible to other units
        constructor Create(t: String); overload;
        constructor Create(a: String; t: String; p: real); overload;
        // in classes, we have different method directives.
        // Methods modify the ability of a class to carry
        // different parameters in an instance.
        // 'virtual' method means that the method can be
        // overwritten by derived class, 'dynamic' method
        // is similar to virtual, but doesn't occupy the RAM
        // and its mechanism is slower.
        // 'override' overwrites the virtual and dynamic methods
        // ONLY, it can be used to overwrite methods of the
        // derived class. 'overload' means you can declare 
        // many functions/procedures/methods with the same name
        // but different type and parameters.
        // we then have the 'static' method, the word static 
        // also means stationary, this means that if the static
        // method is passed, the variable value will remain the
        // same in all instances

        procedure setAuthor(a: String); // sets author for a book
        function getAuthor(): String; // retrieves author name
      
        procedure Display(); override; // displays info about book
end;

var
   n1, n2: Novels;

constructor Books.Create(t : String; p: real);
begin
   title := t;
   price := p;
end;

procedure Books.setTitle(t : String); //sets title for a book
begin
   title := t;
end;

function Books.getTitle() : String; //retrieves title
begin
   getTitle := title;
end;

procedure Books.setPrice(p : real); //sets price for a book
begin
   price := p;
end;

function Books.getPrice() : real; //retrieves price
begin
   getPrice:= price;
end;

procedure Books.Display();
begin
   writeln('Title: ', title);
   writeln('Price: ', price);
end;

// Now for the derived class methods

constructor Novels.Create(t: String);
begin
   inherited Create(t, 0.0);
   author:= ' ';
end;

constructor Novels.Create(a: String; t: String; p: real);
begin
   inherited Create(t, p);
   author:= a;
end;

procedure Novels.setAuthor(a : String); // sets author for a book
begin
   author := a;
end;

function Novels.getAuthor() : String; // retrieves author
begin
   getAuthor := author;
end;

procedure Novels.Display(); // displays info about book
begin
   writeln('Title: ', title);
   writeln('Price: ', price:5:2);
   writeln('Author: ', author);
end;

begin 
   n1 := Novels.Create('Gone with the Wind');
   n2 := Novels.Create('Ayn Rand','Atlas Shrugged', 467.75);
   n1.setAuthor('Margaret Mitchell');
   n1.setPrice(375.99);
   n1.Display;
   n2.Display;
end.