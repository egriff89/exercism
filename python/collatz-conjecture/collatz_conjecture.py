def steps(n: int) -> int:
    c = 0
    if n <= 0:
        raise ValueError("Only positive integers are allowed")

    while n > 1:
        if n % 2 == 0:
            n = n // 2
            c += 1
        else:
            n = (3 * n) + 1
            c += 1

    return c
