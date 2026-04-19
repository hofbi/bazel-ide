# C++ Example

This example shows how to provide IDE support for a C++ project using [configure-vscode-for-bazel](https://github.com/hofbi/dev-tools?tab=readme-ov-file#configure-vs-code-for-bazel) and [hedron_compile_commands](https://github.com/hedronvision/bazel-compile-commands-extractor/).

## Gazelle

We use gazelle to autogenerate `BUILD.bazel` files:

```bash
bazel run //:gazelle
```

See the `gazelle_cc` docs about C++ Gazelle [directives](https://github.com/EngFlow/gazelle_cc#custom-directives).

## Running the tests

```bash
bazel test //examples/cpp/...
```

## Configure VS Code for Bazel

```bash
configure-vscode-for-bazel //examples/cpp/...
# or (ccb is a shortcut for configure-vscode-for-bazel)
ccb //examples/cpp/...
```

This will generate a `launch.json` and a `BUILD.bazel` file in the `.vscode` directory.
As printed by the tool, you can run `bazel run //.vscode:refresh_compile_commands` to refresh the compile commands.
