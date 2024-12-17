def is_valid(isbn: str) -> bool:
    isbn_new: list[str] = list(isbn.replace("-", ""))
    if len(isbn_new) != 10:
        return False

    if isbn_new[-1] == "X":
        isbn_new[-1] = "10"

    if not all([c.isdigit() for c in isbn_new]):
        return False

    return sum(int(char) * n for char, n in zip(isbn_new, range(10, 0, -1))) % 11 == 0
