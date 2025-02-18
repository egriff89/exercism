def is_isogram(string: str) -> bool:
    chars: set[str] = set()
    for i in string.lower():
        if i == "-" or i == " ":
            continue
        elif i in chars:
            return False
        else:
            chars.add(i)
    return True
