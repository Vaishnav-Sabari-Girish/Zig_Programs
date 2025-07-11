//An error set is like an enum, where each error in the set is a value.
//There are no exceptions in Zig, error are values.

const expect = @import("std").testing.expect;

const FileOpenError = error{
    AccessDenied,
    OutOfMemory,
    FileNotFound,
};

const AllocationError = error{OutOfMemory};

test "Coerce error from a subset to a superset" {
    const err: FileOpenError = AllocationError.OutOfMemory;
    try expect(err == FileOpenError.OutOfMemory);
}

test "error union" {
    const maybe_error: AllocationError!u16 = 10; //maybe_error can have a value of type AllocationError or u16
    // Since the value is 10, maybe_error is of type u16

    const no_error = maybe_error catch 0;
    //If maybe_error was of type AllocationError, no_error value would have been 0

    try expect(@TypeOf(no_error) == u16);
    try expect(no_error == 10);
}

//Functions often return error unions
fn failingFunction() error{Oops}!void {
    return error.Oops;
}

test "returning an error" {
    failingFunction() catch |err| {
        try expect(err == error.Oops);
        return;
    };
}
