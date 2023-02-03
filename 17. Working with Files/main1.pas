program fileReading;

var
  Number: Integer;                                                                                               
  Storage: File of Integer;
  filename: String;
begin
  write('Enter the name of a binary file containing only integers:');
  ReadLn(filename);
  assign(Storage, filename);
  reset(Storage);// opens file for reading
  if Eof(Storage) then // if upon opening the file is empty then
    WriteLn('There are no integers to be displayed')
  else repeat
    read(Storage, Number);// reads from declared file into given variable
    writeln(Number)
  until Eof(Storage);// Eof= End-of-file
  Close(Storage)
end.