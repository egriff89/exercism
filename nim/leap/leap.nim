proc divisible(year: int, number: int): bool =
   return year mod number == 0

proc isLeapYear*(year: int): bool =
   if divisible(year, 4) and divisible(year, 100):
      if divisible(year, 400):
         return true
      return false
   elif divisible(year, 4):
      return true
   return false