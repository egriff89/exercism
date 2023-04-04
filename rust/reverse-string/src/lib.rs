use unicode_segmentation::UnicodeSegmentation;

pub fn reverse(input: &str) -> String {
    if input == "" {
        return String::from(input)
    } else {
        let mut s: String = String::from("");
        for i in input.graphemes(true).rev() {
            s.push_str(i);
        }
        return format!("{}", s)
    }
}
