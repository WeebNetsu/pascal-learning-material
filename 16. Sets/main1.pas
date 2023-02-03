program disjunctIntersect;

type
  hobby = (cooking, cleaning, driving, gaming, eating, couchPotato);
  hobbies = set of hobby;
var
  slob, neat, common, unique: hobbies;
begin
  neat := [cooking, cleaning, driving, eating];
  slob := [driving, eating, gaming];
  
  common := neat * slob;// this variable will only contain sets driving and eating
  // the intersection operator picks out what is available in both given sets
  if driving in common then
  begin
    WriteLn('Lets travel the world together.')
  end;

  unique := neat >< slob; // this will give you values available in either set but not on both
  if cooking in unique then
    begin
      WriteLn('Give me your best recipe')
    end;
end.