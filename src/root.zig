const std = @import("std");

pub export fn my_zig_function() void {
    std.debug.print("Hello from zig!\n", .{});
}
