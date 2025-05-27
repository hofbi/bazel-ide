# Python Example

This example shows how to use Bazel to build a Python project.

## Running the tests

```bash
bazel test //examples/py/...
```

## Debugging

Every `py_test` and `py_binary` creates a `py_venv` target named `[target_name].venv` to constrain the interpreter and pip packages used at runtime.

```bash
bazel run //examples/py:test_foo.venv
```

to create the virtualenv and use it in the editor or other tools.
