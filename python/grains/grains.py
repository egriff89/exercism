""" Calculate the number of grains of wheat on a chessboard 
    given that the number on each square doubles.
"""
GRAINS = list(range(64))

def square(number: int) -> int or ValueError:
    """ Return number of grains given the square number """
    if number < 1 or number > 64:
        raise ValueError('square must be between 1 and 64')

    for idx, _ in enumerate(GRAINS):
        if idx == 0:
            GRAINS[idx] = 1
            continue
        GRAINS[idx] = GRAINS[idx - 1] * 2

    return GRAINS[number - 1]

def total() -> int:
    """ Return total number of grains on the board """
    return sum(GRAINS)
