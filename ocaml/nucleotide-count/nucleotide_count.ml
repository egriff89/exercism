open Base

let is_valid ch = List.mem ['A'; 'C'; 'G'; 'T'] ch ~equal:Char.equal

let count_nucleotide s c =
  (* if string `s` contains an invalid character  *)
  if String.to_list s |> List.exists ~f:(fun ch -> not (is_valid ch)) then
    Error 'X'
  (* if character `c` is invalid *)
  else if not (is_valid c) then Error 'X'
  else
    let count =
      String.to_list s
      |> List.fold ~init:0 ~f:(fun acc ch ->
          if Char.equal c ch then acc + 1 else acc )
    in
    Ok count

let count_nucleotides s =
  let chars = String.to_list s in
  if List.exists chars ~f:(fun ch -> not (is_valid ch)) then Error 'X'
  else
    let init = Map.empty (module Char) in
    let map =
      List.fold chars ~init ~f:(fun acc ch ->
          let curr = Option.value (Map.find acc ch) ~default:0 in
          Map.set acc ~key:ch ~data:(curr + 1) )
    in
    Ok map
