program Memory;

procedure dynamicMemory();
var
    // if you are aware of the size of an array
    // it is easier to do
    name: array[1..100] of Char;// stores name of any person

    description: ^String;// when you don't know the length of
    // text you need to store you define a pointer to string
    // without defining how much memory is needed
    // this is good because you can pass in a variable of any memory size

begin
  name := 'Charles Bukowski';

  New(description);// dynamically allocates memory for variable
    if not Assigned(description) then // checks if a pointer is valid
      writeln('Error - unable to allocated required memory')
    else
        description^ := 'Charles Bukowski was a German-American poet.';
        // given that the pointer is valid it fills the variable

    WriteLn('Name: ', name);
    WriteLn('Description: ', description^);

    Dispose(description);// releases dynamically allocated memory
end;

procedure resizeReleaseMem();
// once your program runs, the OS releases all the memory 
// allocated by your program, when you're no longer using
// the memory its good to release it

var
    name: array[1..100] of char;
    description: ^String;
    descript: String;

begin
  name := 'Charles Bukowski';
  descript := 'Charles Bukowski a poet.';

  description := getmem(30);// allocates new memory
    if not Assigned(description) then
      writeln('Error - unable to allocated required memory')
    else
        description^ := descript;

  // lets say you want to store a bigger description
  description := ReallocMem(description, 100);// resizes memory
  descript := descript + ' He is German-American.';
  description^:= descript;

  WriteLn('Name = ', name);
  WriteLn('Description: ', description^);

  FreeMem(description);// releases allocated memory
end;

begin
  WriteLn('Let us see what dynamic memory gives us');
  dynamicMemory();
  WriteLn('Now we resize and release memory');
  resizeReleaseMem();
end.