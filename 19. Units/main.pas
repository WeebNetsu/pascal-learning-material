program chooseNextLeader;
uses randomness; // imports unit

var
    random: Integer;
begin
  WriteLn('Next leader: no. ', getRandomNumber());
  // importing a unit makes all identifiers in the interface 
  // of the unit available to us, as if they are part of our
  // code

  // random := randomness.getRandomNumber();
  // namespacing can also be used to identify units
end.
