let is_div year divisor =
  year mod divisor = 0

let leap_year = function
  | year when is_div year 400 -> true
  | year when is_div year 100 -> false
  | year -> is_div year 4
