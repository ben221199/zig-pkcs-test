const std: type = @import("std");

pub fn build(b: *std.Build) void{
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod = b.createModule(.{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const mod_pkcs11 = b.addLibrary(.{
        .name = "mod_pkcs11",
        .linkage = .dynamic,
        .root_module = mod,
    });

    b.installArtifact(mod_pkcs11);
}
