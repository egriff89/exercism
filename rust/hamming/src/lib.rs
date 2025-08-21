use std::cmp::Ordering;

/// Return the Hamming distance between the strings,
/// or None if the lengths are mismatched.
pub fn hamming_distance(s1: &str, s2: &str) -> Option<usize> {
    let s1_len = s1.chars().count();
    let s2_len = s2.chars().count();

    if s1_len != s2_len {
        return None;
    }

    match s1_len.cmp(&s2_len) {
        Ordering::Less => None,
        Ordering::Greater => None,
        Ordering::Equal => Some(s1.chars().zip(s2.chars()).filter(|c| c.0 != c.1).count()),
    }
}
