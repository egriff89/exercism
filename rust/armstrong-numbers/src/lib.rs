pub fn is_armstrong_number(num: u32) -> bool {
    let num_str = num.to_string();
    let mut result: Option<u32> = Some(0);

    for n in num_str.chars().map(|c| c.to_digit(10).unwrap()) {
        result = result
            .unwrap_or_default()
            .checked_add(n.checked_pow(num_str.len() as u32).unwrap());
    }

    result.unwrap() == num
}
