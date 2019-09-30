#!/bin/bash

set -euo pipefail
set -x

# --apple_bitcode because this bug only repros when linking with bitcode
# --copt=-fembed-bitcode because there's a bazel bug where this flag isn't correctly passed to C compiles even with the above flag
# --linkopt=-all_load to simulate actually depending on enough from BoringSSL to end up with the symbols that cause issues
# --linkopt=-Wl,-fatal_warnings to make the build fail because of this issue
bazel build App \
  --apple_bitcode=embedded \
  --copt=-fembed-bitcode \
  --linkopt=-all_load \
  --linkopt=-Wl,-fatal_warnings
