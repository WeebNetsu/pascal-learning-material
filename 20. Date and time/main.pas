program getDateTime;
uses sysutils; // this is the required unit

var
  YY,MM,DD : Word;

begin
  writeln('Current time : ', TimeToStr(Time));
  // the timetostring function gives the current time

  WriteLn('Date : ', Date); // gives you an encoded form
  // of the  current date

  DeCodeDate (Date,YY,MM,DD); // decodes the date and fills
  // it in the designated variables YY,MM,DD
  
  WriteLn(format('Today is (DD/MM/YY): %d/%d/%d ', [DD,MM,YY]));
  // this is the format by which you write the date

  WriteLn('Date and Time : ', DateTimeToStr(Now));
  // gives you current date and time
end.