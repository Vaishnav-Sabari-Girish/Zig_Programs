//The defer keyword is used to  execute a statement upon exiting the current block

const expect = @import("std").testing.expect;

test "defer keyword" {
    var x: i16 = 5;
    {
        defer x += 2;
        try expect(x == 5); //x += 2is not executed here
    }
    try expect(x == 7); //x += 2 is executed here
}

//When there are multiple defers in a single block, they are executed in reverse order
test "multiple defers" {
    var x: f32 = 5;
    {
        defer x *= 2; //Executed last
        defer x /= 2; //Executed second
        defer x += 3; //Executed first

        try expect(x == 5);
    }
    try expect(x == 8);
}
