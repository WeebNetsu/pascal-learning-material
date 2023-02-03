program Arrays; // you need to have a program name at the top

var
    // crate an array: array[startIndex .. endIndex] of type;
    friends: array[1..3] of string;
    // multi dimentional array
    multiDimArr: array[1..5,1..3] of integer;
    i, j: integer;
begin
    friends[1] := 'Nick'; // have to set array here
    friends[2] := 'Jack'; // have to set array here
    friends[3] := 'Mike'; // have to set array here
    // note: writeln(friends) is not allowed, have to specify index
    writeln(friends[1]);

    // get length of array + how to loop through array
    for i := 1 to length(friends) do
        writeln(friends[i]);

    // example look of multi dimentional array
    // [
    //     [1, 2, 3],
    //     [4, 5, 6],
    //     [7, 8, 9],
    //     [10, 11, 12],
    //     [13, 14, 15]
    // ];
    for i := 1 to 5 do
        for j := 1 to 3 do
            multiDimArr[i][j] := i * j;

    writeln(multiDimArr[1][2]); // access element in array

    for i := 1 to length(multiDimArr) do
    begin
        for j := 1 to length(multiDimArr[i]) do
            // you can skip the [i][j] with [i, j]
            write(multiDimArr[i, j], ' ');
        writeln();
    end;
end.

// run with > fpc main.pas && ./main
