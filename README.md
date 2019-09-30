# BoringSSLWeakRepro

This repo contains a repro case for this BoringSSL incompatibility with
iOS + bitcode https://boringssl-review.googlesource.com/c/boringssl/+/37804

## Usage:

Run `./repro.sh` to see the issue

In the `WORKSPACE` comment in the `patches` line in the `boringssl` rule
and run `./repro.sh` again to see it fixed.
