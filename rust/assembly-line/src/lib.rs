pub fn production_rate_per_hour(speed: u8) -> f64 {
    let cars_per_hour: f64 = 221.0;
    let rate = (speed as f64) * cars_per_hour;

    match speed {
        (1..=4) => rate,
        (5..=8) => rate * 0.90,
        (9..=10) => rate * 0.77,
        _ => 0.0,
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let actual_rate: f64 = production_rate_per_hour(speed) * 100.0;
    ((actual_rate.round() as u32) / 100) / 60
}
