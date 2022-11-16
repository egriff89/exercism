import std/sequtils

proc sum*(number: int, multiples: seq[int]): int =
   # Filter out zeroes
   let filtered = multiples.filter(proc(x: int): bool = x != 0)

   var total = 0;
   var mults: seq[int]

   # Collect multiples
   for i in (1..number - 1):
      for j in (0..len(filtered) - 1):
         if i mod filtered[j] == 0:
            mults.add(i)

   # Remove duplicates and sum
   for m in mults.deduplicate():
      total += m

   return total