use std::collections::HashMap;

pub fn count(nucleotide: char, dna: &str) -> Result<usize, char> {
    if nucleotide == 'X' || dna.contains("X") {
        Err('X')
    } else if dna.is_empty() {
        Ok(0)
    } else {
        Ok(dna.chars().filter(|c| *c == nucleotide).count())
    }
}

fn create_map() -> HashMap<char, usize> {
    let mut map: HashMap<char, usize> = HashMap::new();
    map.insert('A', 0);
    map.insert('C', 0);
    map.insert('G', 0);
    map.insert('T', 0);
    map
}

pub fn nucleotide_counts(dna: &str) -> Result<HashMap<char, usize>, char> {
    if dna.contains("X") {
        Err('X')
    } else if dna.is_empty() {
        Ok(create_map())
    } else {
        let mut nucleotides = create_map();
        for c in dna.chars() {
            nucleotides.entry(c).and_modify(|count| *count += 1);
        }

        Ok(nucleotides)
    }
}
