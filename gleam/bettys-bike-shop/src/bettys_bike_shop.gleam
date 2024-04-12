import gleam/int
import gleam/float
import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  int.to_float(pence) /. int.to_float(100)
}

pub fn pounds_to_string(pounds: Float) -> String {
  let display: String = float.to_string(pounds)
  string.append("£", display)
}
