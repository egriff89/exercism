def is_armstrong_number(number: int) -> bool:
    result = sum([int(i) ** len(str(number)) for i in str(number)])
    return result == number
