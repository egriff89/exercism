pub fn raindrops(n: u32) -> String {
    let factors: Vec<u32> = (1..=n).filter(|x| n % x == 0).collect();
    let mut sounds: String = String::new();

    if !factors.contains(&3) && !factors.contains(&5) && !factors.contains(&7) {
        return n.to_string();
    }

    if factors.contains(&3) {
        sounds.push_str("Pling");
    }

    if factors.contains(&5) {
        sounds.push_str("Plang");
    }

    if factors.contains(&7) {
        sounds.push_str("Plong");
    }

    sounds
}
