# Rust Example

This is a minimal example for a Rust project using Bazel and `rules_rust`.
Refer to <https://github.com/bazelbuild/rules_rust/tree/main/examples> for more advanced Rust examples.

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
