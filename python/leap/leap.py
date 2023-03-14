""" Given a year, report if it is a leap year. """

def is_even(year: int, div: int) -> bool:
    """ Validate year is evenly divisible """
    return year % div == 0

def leap_year(year: int) -> bool:
    """ Validate leap year """
    if is_even(year, 4) and is_even(year, 100):
        if is_even(year, 400):
            return True
        return False
    if is_even(year, 4):
        return True

    return False
