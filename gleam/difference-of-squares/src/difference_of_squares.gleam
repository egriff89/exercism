import gleam/int
import gleam/list

pub fn square_of_sum(n: Int) -> Int {
  let sum = list.fold(list.range(1, n), 0, int.add)
  sum * sum
}

pub fn sum_of_squares(n: Int) -> Int {
  list.map(list.range(1, n), fn(x) { x * x })
  |> list.fold(0, int.add)
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
