def is_triangle(sides: list[int | float]) -> bool:
    a, b, c = sides
    if a == 0 and b == 0 and c == 0:
        return False
    return (a + b >= c) and (b + c >= a) and (a + c >= b)


def equilateral(sides: list[int | float]) -> bool:
    a, b, c = sides
    if not is_triangle(sides):
        return False
    return a == b and b == c and a == c


def isosceles(sides: list[int | float]) -> bool:
    a, b, c = sides
    if not is_triangle(sides):
        return False
    return a == b or b == c or a == c


def scalene(sides: list[int | float]) -> bool:
    a, b, c = sides
    if not is_triangle(sides):
        return False
    return a != b and b != c and a != c
