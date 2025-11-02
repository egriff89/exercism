fun name (input: string option) =
  if (Option.isSome input) then
    "One for " ^ Option.valOf input ^ ", one for me."
  else
    "One for you, one for me."
