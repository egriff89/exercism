(* Generate list from 1 to n *)
let range n = List.init n succ

(* Sum list contents *)
let rec sum_list = function
  | [] -> 0
  | h :: t -> h + sum_list t
;;

(* Square list contents *)
let rec sq_list = function
  | [] -> 0
  | h :: t ->
    int_of_float (float_of_int h ** 2. +. float_of_int (sq_list t))
;;

let square_of_sum = function
  | 0 -> 0
  | x -> int_of_float (float_of_int(sum_list (range x)) ** 2.)
;;

let sum_of_squares = function
  | 0 -> 0
  | x ->
    let list = range x in
    match list with
    | [] -> 0
    | h :: t ->
      int_of_float (float_of_int h ** 2. +. float_of_int (sq_list t))
    ;;
;;

let difference_of_squares n = square_of_sum n - sum_of_squares n
