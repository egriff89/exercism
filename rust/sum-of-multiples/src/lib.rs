use std::collections::HashSet;

pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    let mut uniques: HashSet<u32> = HashSet::new();

    if (factors.len() == 1 && factors[0] == 0) || factors.len() == 0 {
        return 0
    } else {

        // Calculate factors (ugly, but works)
        for &f in factors {
            if f == 0 {
                continue;
            } else {
                for j in 0.. {
                    let res: u32 = f * j;
                    if res >= limit {
                        break;
                    } else {
                        uniques.insert(res);
                    }
                }
            }
        }
    }

    return uniques.iter().sum()
}