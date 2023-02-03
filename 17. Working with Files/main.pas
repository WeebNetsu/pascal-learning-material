program fileWriting;

// we declare files using the data type of their contents
var
  Number, Square: Integer;
  TwentySquares: file of Integer;// the declared file is for storing integer numbers
begin
  assign(TwentySquares, 'perfect_squares.txt');// the declared file, then the file name
  Rewrite(TwentySquares);// opens a file for writing
  for Number := 1 to 20 do begin
    Square := Number * Number;
    Write(TwentySquares, Square);// declared file, variable to write to file
  end;
  Close(TwentySquares);// closes a file
end.
