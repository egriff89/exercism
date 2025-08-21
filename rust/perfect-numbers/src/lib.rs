use std::cmp::Ordering;

#[derive(Debug, PartialEq, Eq)]
pub enum Classification {
    Abundant,
    Perfect,
    Deficient,
}

fn aliquot_sum(num: u64) -> u64 {
    (1..num).filter(|x| num % x == 0).sum()
}

pub fn classify(num: u64) -> Option<Classification> {
    if num == 0 {
        return None;
    }
    match num.cmp(&aliquot_sum(num)) {
        Ordering::Less => Some(Classification::Abundant),
        Ordering::Equal => Some(Classification::Perfect),
        Ordering::Greater => Some(Classification::Deficient),
    }
}
