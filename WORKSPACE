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
    # Add this patch to see this issue fixed
    # patches = ["//:boringssl.patch"],
    sha256 = "36049e6cd09b353c83878cae0dd84e8b603ba1a40dcd74e44ebad101fc5c672d",
    strip_prefix = "boringssl-37b57ed537987f1b4c60c60fa1aba20f3a0f6d26",
    urls = ["https://github.com/google/boringssl/archive/37b57ed537987f1b4c60c60fa1aba20f3a0f6d26.tar.gz"],
)

git_repository(
    name = "build_bazel_rules_apple",
    commit = "a595f71b94f75d531ebdf8ae31cc8eb1ead6a480",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    shallow_since = "1568153651 -0700",
)

load("@build_bazel_rules_apple//apple:repositories.bzl", "apple_rules_dependencies")

apple_rules_dependencies()
