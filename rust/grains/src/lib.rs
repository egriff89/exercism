pub fn square(s: u32) -> u64 {
    return match s {
        s if s < 1 || s > 64 => panic!("Square must be between 1 and 64"),
        _ => (2 as u64).pow(s - 1)
    }
}

pub fn total() -> u64 {
    return u64::MAX
}
