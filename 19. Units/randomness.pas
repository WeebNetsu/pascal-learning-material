unit randomness;

// a unit's interface is available to the public
interface
function getRandomNumber(): Integer;
// a list of the functions makes them usable outside of the unit


// a unit's implementation is only available to the programmer
// of the unit
implementation
function getRandomNumber(): Integer;
// a definition of a routine must only be in implementation
begin
  getRandomNumber := 3
  // chosen from a die, this is a random number ;)
end;

end.