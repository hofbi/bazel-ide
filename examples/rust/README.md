# Rust Example

This is a minimal example for a Rust project using Bazel and [rules_rs](https://github.com/hermeticbuild/rules_rs).
Refer to <https://github.com/bazelbuild/rules_rust/tree/main/examples> for more advanced Rust examples using `rules_rust`.
Since `rules_rs` as a wrapper around `rules_rust` supports all of its features, you can transfer `rules_rust` examples to `rules_rs` with minimal changes.

## Running the tests

```bash
bazel test //examples/rust/...
```

## Running the binary

```bash
bazel run //examples/rust:main
```

## cargo_env.bzl

Checkout the [examples of cargo_env.bzl](https://github.com/ZiplineTeam/cargo_env.bzl/tree/main/examples) for how to use `cargo` on a system without Rust installed.
