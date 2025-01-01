def classify(number: int) -> str:
    """A perfect number equals the sum of its positive divisors.

    :param number: int a positive integer
    :return: str the classification of the input integer
    """
    if number <= 0:
        raise ValueError("Classification is only possible for positive integers.")

    factors = [num for num in range(1, number) if number % num == 0]
    aliquot_sum = sum(factors)
    if number == aliquot_sum:
        return "perfect"
    elif number < aliquot_sum:
        return "abundant"
    else:
        return "deficient"
