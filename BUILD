load("@build_bazel_rules_apple//apple:macos.bzl", "macos_command_line_application")

objc_library(
    name = "main",
    srcs = ["main.m"],
    deps = ["@boringssl//:ssl"],
)

macos_command_line_application(
    name = "App",
    minimum_os_version = "10.11",
    deps = ["main"],
)
