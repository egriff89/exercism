import std/strutils

proc getFactors(number: int): seq[int] =
   var factors: seq[int]
   for n in 1..number:
      if number mod n == 0: factors.add(n)
   return factors

proc convert*(n: int): string =
   let factors = getFactors(n)
   var response = ""
   
   if (not factors.contains(3)) and (not factors.contains(5)) and (not factors.contains(7)):
      return intToStr(n)

   if factors.contains(3): response.add("Pling")
   if factors.contains(5): response.add("Plang")
   if factors.contains(7): response.add("Plong")
   
   return response
