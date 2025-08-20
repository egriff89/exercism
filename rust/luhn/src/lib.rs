/// Check a Luhn checksum.
pub fn is_valid(code: &str) -> bool {
    if code.chars().count() <= 1
        || code.starts_with(' ')
        || code
            .chars()
            .any(|c| c.is_ascii_punctuation() || c.is_ascii_alphabetic())
    {
        return false;
    }

    let mut code: Vec<u32> = code
        .chars()
        .filter_map(|c| c.to_string().parse::<u32>().ok())
        .collect();

    code.iter_mut()
        .rev()
        .skip(1)
        .step_by(2)
        .for_each(|c: &mut u32| {
            *c *= 2;
            if *c > 9 {
                *c -= 9;
            }
        });

    code.iter().sum::<u32>() % 10 == 0
}
