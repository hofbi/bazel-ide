# bazel-ide

Example project for a Bazel dev environment and IDE support.

Watch our talk from BazelCon 2025:

[![Review of State of the Art Solutions for IDE support and Developer Tooling in Monorepos using Bazel](https://img.youtube.com/vi/g_5jyXsCELk/0.jpg)](https://www.youtube.com/watch?v=g_5jyXsCELk)

## Setup

There is a minimal [devcontainer](.devcontainer/devcontainer.json) available providing a minimal set of dependencies such as `git`, `bazel`, [`direnv`](https://direnv.net/), `pre-commit`, and `python` (for running Python packages outside of Bazel) as well as a few configuration steps executed when the container is created.
This set of minimal dependencies and the few configuration steps should be all you need for a local setup outside of the devcontainer.

All other dependencies are managed by Bazel and [`bazel_env.bzl`](https://github.com/buildbuddy-io/bazel_env.bzl).
To get started, run the following command:

```bash
direnv allow .envrc
bazel run //tools:bazel_env
```

Now you should see a list of tools available in your `PATH`.

## Updating tools

`//tools:bazel_env` installs the [multitool](https://github.com/theoremlp/multitool) companion tool which can be used to update the lockfile.

```bash
multitool --lockfile multitool.lock.json update
```

## Examples

There are language specific examples for IDE support based on existing rules and tools managed by `bazel_env.bzl`.

- [C++](examples/cpp/README.md)
- [Python](examples/py/README.md)
- [Rust](examples/rust/README.md)

## Resources

Some useful resources used for this project:

- [Developer Tooling in Monorepos with bazel_env - feat. Fabian Meumertzheim](https://www.youtube.com/watch?v=TDyUvaXaZrc)
- [Device management: tools on your developers PATH](https://blog.aspect.build/bazel-devenv)
- [Bazel Env](https://github.com/buildbuddy-io/bazel_env.bzl)
- [Dev Tools](https://github.com/luminartech/dev-tools)
- [Rules Py](https://github.com/aspect-build/rules_py/)
- [Bazel 102: Python](https://training.aspect.build/bazel-102)
- [Bazel 104: C++](https://training.aspect.build/bazel-104-c)
