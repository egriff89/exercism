def is_pangram(sentence: str) -> bool:
    chars: dict[str, int] = dict()
    ignore = ["-", "_", " ", ".", '"']
    for i in sentence.lower():
        if i in ignore or i.isdigit():
            continue
        elif i in chars.keys():
            chars[i] += 1
        else:
            chars.update({i: 1})
    return len(chars.keys()) == 26
