const std = @import("std");

pub fn main() !void {
    const a = [5]u8{ 1, 2, 3, 4, 5 };
    const b = [_]u8{ 10, 20, 30, 40, 50, 60, 70 }; //_ automatically fills the array length

    std.debug.print("Array one {any}\n", .{a});
    std.debug.print("Array Two {any}\n", .{b});

    std.debug.print("\nLength of Array 1: {}\n", .{a.len});
    std.debug.print("Length of Array 2: {}\n", .{b.len});

    std.debug.print("\nArray Operations\n", .{});
    std.debug.print("Concatenation\n", .{});
    std.debug.print("Concat : {any}\n", .{a ++ b});
    std.debug.print("\nRepeating elements of array\n", .{});
    std.debug.print("Repeat a : {any}\n", .{a ** 2});
    std.debug.print("Repeat b : {any}", .{b ** 3});
}
