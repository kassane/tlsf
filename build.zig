//! Use zig v0.12.0 or master - zig-pkg
const std = @import("std");

pub fn build(b:*std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addStaticLibrary(.{
        .name = "tlsf",
        .target = target,
        .optimize = optimize,
    });
    lib.addIncludePath(.{.path = "include"});
    lib.addCSourceFile(.{
        .file = .{.cwd_relative = "tlsf.c"},
        .flags = &.{
            "-Wall",
            "-Wpedantic",
            "-Wextra",
        },
    });
    lib.linkLibC();
    b.installArtifact(lib);
}