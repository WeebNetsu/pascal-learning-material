program unionDifference;

// A set is a collection of elements/data of the same type
type
  hobby = (cooking, cleaning, driving, gaming, eating, couchPotato);
  hobbies = set of hobby; // hobbies is a set of the elements in hobby
var
  slob: hobbies;// the slob variable can ONLY have values from hobbies 
begin
  slob := [gaming, eating];// sets are indicated using square brackets
  // variable slob represents a set of hobbies
  // the computer still has the other hobbies set stored, 
  // they only read as False on the slob variable and thus are not part of
  // the slob variable

  if gaming in slob then // if there is gaming in slob
    begin
    writeln('Are you a level 45 khajiit?')
    end;
  
  slob := slob + [couchPotato]; //set values can be added(union) on an existing set variable
  // now slob contains previously held
  // values plus the one we just added
  slob := slob - [eating];// this removes(difference) 'eating' from the slob variable
end.
