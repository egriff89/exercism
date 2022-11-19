import std/math

proc squareOfSum*(n: int): int =
   var squareSum = 0
   for i in 1 .. n:
      squareSum += i
   return squareSum ^ 2

proc sumOfSquares*(n: int): int =
   var sumSquares = 0
   for i in 1 .. n:
      sumSquares += i ^ 2
   return sumSquares

proc difference*(n: int): int =
   return squareOfSum(n) - sumOfSquares(n)