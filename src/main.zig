const std = @import("std");
const windows = std.os.windows;
const time = std.time;
fn sleep(ms: u64) void {
    time.sleep(ms * 1000_000);
}
const print = std.debug.print;
pub fn main() !void {
    sleep(5000);
    const peb = windows.peb();
    if (peb.BeingDebugged == 1) {
        print("Detected a Debugger.", .{});
    } else {
        print("We are good.", .{});
    }
}
