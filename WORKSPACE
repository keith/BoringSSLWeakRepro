load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "zlib",
    build_file = "@com_google_protobuf//:third_party/zlib.BUILD",
    sha256 = "629380c90a77b964d896ed37163f5c3a34f6e6d897311f1df2a7016355c45eff",
    strip_prefix = "zlib-1.2.11",
    urls = ["https://github.com/madler/zlib/archive/v1.2.11.tar.gz"],
)

http_archive(
    name = "boringssl",
    patches = [
        # "//:boringssl.patch",  # Add this patch to see this issue fixed
        "//:removewa.patch",
    ],
    sha256 = "c87e632f5e78b8e3b5bf441ae1d11906479b7225230df9bdacfee24357094a62",
    strip_prefix = "boringssl-40b4c308a328ae05435971ca4719e6486e5b680e",
    # From master-with-bazel branch
    urls = ["https://github.com/google/boringssl/archive/40b4c308a328ae05435971ca4719e6486e5b680e.tar.gz"],
)

git_repository(
    name = "build_bazel_rules_apple",
    commit = "d37fa4fb115632866ee9ec7416cdd2dbf6a7ef18",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    shallow_since = "1667300604 +0100",
)

load("@build_bazel_rules_apple//apple:repositories.bzl", "apple_rules_dependencies")

apple_rules_dependencies()
