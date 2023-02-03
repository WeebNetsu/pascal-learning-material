program EnumeratedVariables;

type
    text = string; // you can give a type a name here

    // below is known as an enumerated variable
    months = (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sept, Oct, Nov, Dec);
var
    lastName: text; // we can now use the type here
    month: months;

    // below are sub ranges
    points: 1 .. 100;
    alpha: 'A' .. 'Z';
begin
    lastName := 'Lester';
    month := Feb;

    writeln(lastName); // works like a normal string
    writeln(month); // contains the month

    points := 100; // points can be anything between 1 and 100
    alpha:= 'L'; // Any capital letter in the alphabed
    // whilst the above does not force you to have a value between 1 and 100
    // or a capital alphabed letter, it is recommended to stay with it, since a number
    // such as -20 can cause errors, since it's not specified between 1 and 100
    writeln(points);
    writeln(alpha);
end.