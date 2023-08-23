pub fn is_div(year: u64, divisor: u64) -> bool {
    year % divisor == 0
}

pub fn is_leap_year(year: u64) -> bool {
    match year {
        year if is_div(year, 400) => true,
        year if !is_div(year, 100) => is_div(year, 4),
        _ => false
    }
}
