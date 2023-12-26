open Base

(* Generate list from 1 to n *)
let range n = List.init n ~f:Int.succ

(* Sum list contents *)
let rec sum_list = function
  | [] -> 0
  | h :: t -> h + sum_list t
;;

(* Square list contents *)
let rec sq_list = function
  | [] -> 0
  | h :: t ->
    let open Float.O in
    Int.of_float (of_int h ** 2. + of_int (sq_list t))
;;

let square_of_sum = function
  | 0 -> 0
  | x -> 
    let open Float.O in
    Int.of_float (of_int (sum_list (range x)) ** 2.)
;;

let sum_of_squares = function
  | x ->
    let list = range x in
    match list with
    | [] -> 0
    | h :: t ->
      let open Float.O in
      Int.of_float (of_int h ** 2. + of_int (sq_list t))
    ;;
;;

let difference_of_squares n = square_of_sum n - sum_of_squares n
