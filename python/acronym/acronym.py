import re


def abbreviate(words: str) -> str:
    split_words: list[str] = re.split(r"[\s\-\n,_]+", words, flags=re.I)
    acronym = ""
    for word in split_words:
        acronym += word[:1]
    return acronym.upper()
