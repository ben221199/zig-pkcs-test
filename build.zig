const std = @import("std");

pub fn build(b: *std.Build) void{
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod = b.createModule(.{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const libfizzbuzz = b.addLibrary(.{
        .name = "mod_pkcs11",
        .linkage = .dynamic,
        .version = .{ .major = 1, .minor = 2, .patch = 3 },
        .root_module = mod,
    });

    b.installArtifact(libfizzbuzz);
}
