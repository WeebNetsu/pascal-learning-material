unit myGreatUnit; // unlike programs, you need to have a unit name at top
// the name of your (.pas) must be similar to that of your unit
// Units in Pascal are like what we call modules in Python
// 'uses randomness;' //this is the method by which we use units

interface // a person using a unit needs only to know how to use it
// this is outlined by 'interface'

implementation // the programmer of the unit needs to implement 
// the unit's functionality
uses randomness; // other units can be imported to another unit
// they can either be in the implemenation clause or interface clause 

end. //this is the simplest form of a unit
