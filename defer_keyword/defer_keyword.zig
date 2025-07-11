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
