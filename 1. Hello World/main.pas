program MyFirstProgram; // you need to have a program name at the top

// uses, which tells the program to use some features, like
// import math in Python or
// #include <iostream> in C++
// uses crt; // crt allows us to use readkey

begin
    { 
        This is a block comment.

        the main program is inside a begin and end block

        writeln will print text to the screen
        NOTE: writeln uses '' and NOT ""
     }
    writeln('Hello World!'); // semicolons are required
    WrITeLN('Ohaio'); // not case sensitive
    // readkey; // useful if you have a popup console and need it
    // to stay open (requires crt)
end. // note the period after the end

// run with > fpc main.pas && ./main

(*
    This is also a multi
    line
    comment
*)