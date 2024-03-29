open Base

let raindrop n = 
  match n % 3, n % 5, n % 7 with
  | (0, 0, 0) -> "PlingPlangPlong"
  | (0, 0, _) -> "PlingPlang"
  | (0, _, 0) -> "PlingPlong"
  | (_, 0, 0) -> "PlangPlong"
  | (0, _, _) -> "Pling"
  | (_, 0, _) -> "Plang"
  | (_, _, 0) -> "Plong"
  | _ -> Int.to_string n
