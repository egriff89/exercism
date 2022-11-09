def steps(n, c=0):
    if n <= 0: raise ValueError("Only positive integers are allowed")
    if n == 1: return c
    return steps(n/2, c=c+1) if n % 2 == 0 else steps((3*n)+1, c=c+1)