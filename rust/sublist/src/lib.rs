use std::cmp::Ordering;

#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(_first_list: &[T], _second_list: &[T]) -> Comparison {
    fn check_superlist<T: PartialEq>(long_list: &[T], short_list: &[T]) -> bool {
        short_list.is_empty()
            || long_list
                .windows(short_list.len())
                .any(|window: &[T]| window == short_list)
    }

    match &_first_list.len().cmp(&_second_list.len()) {
        Ordering::Equal if _first_list == _second_list => Comparison::Equal,
        Ordering::Greater if check_superlist(_first_list, _second_list) => Comparison::Superlist,
        Ordering::Less if check_superlist(_second_list, _first_list) => Comparison::Sublist,
        _ => Comparison::Unequal,
    }
}
