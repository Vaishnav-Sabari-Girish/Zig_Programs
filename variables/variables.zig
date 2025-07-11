const std = @import("std");
//Variables
const constant: i32 = 5; //32 bit signed constant integer
var variable: u32 = 5000; //32 bit unsigned variable integer

//@ performs an explicit type correction
const inferred_constant = @as(i32, 5);
var inferred_variable = @as(u32, 5000);

//Constants and variables without any values (NULL)
const a: i32 = undefined;
var b: u32 = undefined;

pub fn main() !void {
    std.debug.print("Constant: {}\n", .{constant});
    std.debug.print("Variable {}\n", .{variable});
    std.debug.print("Explicity Type corrected constant: {}\n", .{inferred_constant});
    std.debug.print("Explicity Type corrected variable: {}\n", .{inferred_variable});
}
