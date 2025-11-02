fun name (input: string option) =
  case Option.isSome input of
    true  => "One for " ^ Option.valOf input ^ ", one for me."
  | false => "One for you, one for me."
