program DataTypesAndVariables;

var // this is to declare variables start here
    age: integer; // create an days variable of type integer
    firstName, hobby: string; // variables are in cammelCase (but remember, capital letters gets treated the same as lowercase ones)
    letter: char; // can hold single characters
const // to declare constant variables
    VAT = 0.15; // no data type assignment required
begin
    age := 15; // assign a value to a variable
    writeln('I am ', age, ' years old and tomorrow I will be ', age + 1, ' years old!');

    firstName := 'Jack';
    hobby := 'eating';

    writeln('Hello! My name is ', firstName, ' and I just love ', hobby, '!');
    writeln('At first I thought ', firstName, ' was not a cool name, but soon realized that ', firstName, ' is the coolest name ever!');

    // you can change the content of a variable
    firstName := 'Nick';
    age := age + 5;

    writeln('After 5 years I am now ', age, ' years old and my new name is ', firstName);

    // constant variables can be used but NOT changed
    writeln('the total VAT is: ', VAT);

    { 
        Types of data types
        Integer - 1, 2, 3, 4, 5
        String - 'text inside', 'single quotes'
        boolean - true or false
        real - 2.45, 3.98, 9.23
     }
end.