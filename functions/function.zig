const expect = @import("std").testing.expect;

fn addFive(x: u32) u32 {
    return x + 5;
}

test "functions" {
    const y = addFive(10);

    try expect(@TypeOf(y) == u32);
    try expect(y == 15);
}
