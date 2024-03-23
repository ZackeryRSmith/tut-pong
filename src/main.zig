// raylib-zig (c) Nikolas Wipper 2023

const rl = @import("raylib");

const SCREEN_WIDTH = 800;
const SCREEN_HEIGHT = 400;

pub fn main() anyerror!void {
    rl.initWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "tut pong");
    defer rl.closeWindow();

    rl.setTargetFPS(60);
    while (rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.drawRectangle(0, 0, 32, 32, rl.Color.red);
    }
}
