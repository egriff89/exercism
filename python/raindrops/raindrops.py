def get_factors(number: int) -> list[int]:
    return [n for n in range(1, number + 1) if number % n == 0]


def convert(number: int) -> str:
    factors = get_factors(number)
    speak = ""
    if 3 not in factors and 5 not in factors and 7 not in factors:
        return str(number)
    if 3 in factors:
        speak += "Pling"
    if 5 in factors:
        speak += "Plang"
    if 7 in factors:
        speak += "Plong"
    return speak
