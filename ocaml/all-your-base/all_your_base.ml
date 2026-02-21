open Base

type base = int

let validate_inputs ~base_from ~base_target nums =
  if base_from <= 1 || base_target <= 1 then true
  (* Invalid if any digit is negative or >= base_from *)
  else List.exists ~f:(fun digit -> digit < 0 || digit >= base_from) nums

let convert_bases ~from ~digits ~target =
  if validate_inputs ~base_from:from ~base_target:target digits then
    None
  else
    (* Convert to decimal *)
    let decimal = List.fold_left digits ~init:0 ~f:(fun acc digit ->
      acc * from + digit
    ) in
    (* Convert from decimal to target base *)
    match decimal with
    | 0 -> Some [0]
    | _ ->
      let rec convert_to_base num base acc =
        match num with
        | 0 -> acc
        | _ -> convert_to_base (num / base) base ((num % base) :: acc)
      in
      Some (convert_to_base decimal target [])
