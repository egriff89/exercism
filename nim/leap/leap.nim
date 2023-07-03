proc divisible(year: int, number: int): bool =
   return year mod number == 0

proc isLeapYear*(year: int): bool =
   if divisible(year, 400):
      return true
   elif divisible(year, 100):
      return false
   return divisible(year, 4)