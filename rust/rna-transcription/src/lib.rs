use std::collections::HashMap;

#[derive(Debug, PartialEq, Eq)]
pub struct Dna(String);

#[derive(Debug, PartialEq, Eq)]
pub struct Rna(String);

impl Dna {
    pub fn new(dna: &str) -> Result<Dna, usize> {
        if dna.is_empty() {
            return Ok(Dna(dna.to_string()));
        }

        for (idx, ch) in dna.char_indices() {
            if ch.ne(&'A') && ch.ne(&'C') && ch.ne(&'G') && ch.ne(&'T') {
                return Err(idx);
            }
        }

        Ok(Dna(dna.to_string()))
    }

    pub fn into_rna(self) -> Rna {
        if self.0.is_empty() {
            return Rna(self.0);
        }

        let mut strand = String::from("");
        let complements = HashMap::from([('G', 'C'), ('C', 'G'), ('T', 'A'), ('A', 'U')]);
        for ch in self.0.chars() {
            strand.push(*complements.get(&ch).unwrap());
        }

        Rna(strand)
    }
}

impl Rna {
    pub fn new(rna: &str) -> Result<Rna, usize> {
        if rna.is_empty() {
            return Ok(Rna(rna.to_string()));
        }

        let mut strand = String::from("");
        for (idx, ch) in rna.char_indices() {
            if ch.ne(&'C') && ch.ne(&'G') && ch.ne(&'A') && ch.ne(&'U') {
                return Err(idx);
            }
            strand.push(ch);
        }

        Ok(Rna(strand))
    }
}
