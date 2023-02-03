program Pointers; // you need to have a program name at the top

var
    num: integer;
    numPtr: ^integer; // pointer that can hold the memory address of an integer
    numAddress: ^word;
    nilPtr: ^string;
begin
    num := 5 * 10;
    writeln('Num: ', num);

    numPtr := @num; // assign pointer to address of num
    writeln('value: ', numPtr^); // ^ can be used to dereference pointer and get the value stored at that location
    numAddress := addr(numPtr);
    // will print out the memory address of the pointer
    writeln('address: ', numAddress^);

    numPtr^ := -29;
    writeln('value: ', numPtr^);
    writeln('Num: ', num); // both changed

    nilPtr := nil; // if you want to assign it an address later
    if nilPtr <> nil then
        writeln('Something is inside the pointer, continue the code');
end.

// run with > fpc main.pas && ./main
