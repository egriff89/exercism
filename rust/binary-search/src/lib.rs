pub fn find(array: &[i32], key: i32) -> Option<usize> {
    if array.is_empty() || key < array[0] {
        return None;
    }

    let mut low = 0;
    let mut high = array.len() - 1;

    while low <= high {
        let mid = low + (high - low) / 2;
        if key == array[mid] {
            return Some(mid);
        } else if key < array[mid] {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }
    None
}
