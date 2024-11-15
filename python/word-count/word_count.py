import re


def process_sentence(sentence: str) -> list[str]:
    words: list[str] = [
        word.strip("'") for word in re.split(r'[!&@$%^,:_."\t\n ]+', sentence.lower())
    ]

    return list(filter(lambda x: x != "", words))


def count_words(sentence: str):
    words = process_sentence(sentence)

    word_store: dict[str, int] = {}
    for word in words:
        if word in word_store:
            word_store[word] += 1
        else:
            word_store[word] = 1

    return word_store
