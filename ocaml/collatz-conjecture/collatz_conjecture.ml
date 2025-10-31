let collatz_conjecture n =
  if n <= 0 then Error "Only positive integers are allowed"
  else
    let rec inner number steps =
      if number = 1 then Ok steps
      else if number mod 2 = 0 then inner (number / 2) (steps + 1)
      else inner ((number * 3) + 1) (steps + 1)
    in
    inner n 0

