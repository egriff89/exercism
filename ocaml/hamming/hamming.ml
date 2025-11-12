open Base

type nucleotide = A | C | G | T

let nucleotide_to_char(dna: nucleotide) =
  match dna with
  | A -> 'A'
  | C -> 'C'
  | G -> 'G'
  | T -> 'T'

let hamming_distance (strand_a: nucleotide list ) (strand_b: nucleotide list) =
  match List.is_empty strand_a, List.is_empty strand_b with
  | (true, true) -> Ok 0
  | (true, _) -> Error "strands must be of equal length"
  | (_, true) -> Error "strands must be of equal length"
  | _ ->
    let a_len = List.length strand_a in
    let b_len = List.length strand_b in
    if a_len  <> b_len then 
      Error "strands must be of equal length"
    else
      let arr_a = Array.of_list strand_a |> Array.map ~f:(nucleotide_to_char) in
      let arr_b = Array.of_list strand_b |> Array.map ~f:(nucleotide_to_char) in
      let diff = Array.filteri arr_a ~f:(fun i a -> Char.compare a arr_b.(i) <> 0) in
      Ok (Array.length diff)