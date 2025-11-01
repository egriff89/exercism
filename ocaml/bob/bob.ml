open Base

let response_for text =
  let txt = String.strip text in
  if String.length txt = 0 then "Fine. Be that way!" else
  let is_question = String.equal (String.of_char (String.get txt (String.length txt -1))) "?" in
  let is_yelling = String.equal txt (String.uppercase txt) && String.exists ~f:Char.is_alpha txt in
  match (is_question, is_yelling) with
  | (true, true) -> "Calm down, I know what I'm doing!"
  | (true, false) -> "Sure."
  | (false, true) -> "Whoa, chill out!"
  | (false, false) -> "Whatever."
