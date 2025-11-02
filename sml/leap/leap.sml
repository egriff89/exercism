fun divisible year n =
  year mod n = 0

fun isLeapYear year =
  if (divisible year 400) then true
  else if (divisible year 100) then false
  else if (divisible year 4) then true
  else false
