proc steps*(n: int, c: int = 0): int | ValueError =
   if n <= 0: raise newException(ValueError, "Only positive integers allowed!")
   if n == 1: return c
   elif n mod 2 == 0:
      steps(int(n / 2), c + 1)
   else:
      steps(((n * 3) + 1), c + 1)