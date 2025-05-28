# C++ Example

This example shows how to provide IDE support for a C++ project using [configure-vscode-for-bazel](https://github.com/luminartech/dev-tools?tab=readme-ov-file#configure-vs-code-for-bazel) and [hedron_compile_commands](https://github.com/hedronvision/bazel-compile-commands-extractor/).

## Configure VS Code for Bazel

```bash
configure-vscode-for-bazel //examples/cpp/...
```

This will generate a `launch.json` and a `BUILD.bazel` file in the `.vscode` directory.
As printed by the tool, you can run `bazel run //.vscode:refresh_compile_commands` to refresh the compile commands.
