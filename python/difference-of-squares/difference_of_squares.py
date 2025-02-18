def square_of_sum(number: int) -> int:
    return sum(range(1, number + 1)) ** 2


def sum_of_squares(number: int) -> int:
    if number == 1:
        return 1
    return (number**2) + sum_of_squares(number - 1)


def difference_of_squares(number: int) -> int:
    return square_of_sum(number) - sum_of_squares(number)
