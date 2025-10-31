let two_fer name =
  if Option.is_some name then "One for " ^ Option.get name ^ ", one for me."
  else "One for you, one for me."
