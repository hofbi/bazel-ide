from foo import add


def test_add() -> None:
    assert add(1, 2) == 3
