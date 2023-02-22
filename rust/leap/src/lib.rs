pub fn get_rem(year: u64, divisor: u64) -> u64 {
    return year % divisor;
}

pub fn is_leap_year(year: u64) -> bool {
    if (get_rem(year, 4) == 0) && (get_rem(year, 100) == 0) && (get_rem(year, 400) == 0) {
        return true;
    }
    else if (get_rem(year, 4) == 0) && (get_rem(year, 100) != 0) {
        return true;
    }
    return false;
}
