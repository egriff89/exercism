pub fn collatz(n: u64) -> Option<u64> {
    return match n {
        0 => None,
        1 => Some(0),
        n if n % 2 == 0 => collatz(n / 2)
            .map(|steps: u64| steps + 1),
        n => collatz(3u64.checked_mul(n)?.checked_add(1)?)
            .map(|steps: u64| steps + 1)
    }
}