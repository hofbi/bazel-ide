"""Allow rules_python gazelle to generate a macro that runs pytest as the main.

See https://github.com/aspect-build/aspect-workflows-template/blob/main/%7B%7B%20.ProjectSnake%20%7D%7D/tools/pytest/defs.bzl
"""

load("@aspect_rules_py//py:defs.bzl", _py_test = "py_test")

def py_test(name, deps = [], **kwargs):
    _py_test(
        name = name,
        pytest_main = True,
        deps = deps + ["@python_deps//pytest"],
        **kwargs
    )
