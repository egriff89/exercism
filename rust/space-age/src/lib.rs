const EARTH_YEAR_DAYS: f64 = 365.25;
const EARTH_YEAR_SECONDS: u64 = 31_557_600;

#[derive(Debug)]
pub struct Duration(f64);

impl From<u64> for Duration {
    fn from(s: u64) -> Self {
        Duration(s as f64)
    }
}

pub trait Planet {
    fn years_during(d: &Duration) -> f64 {
        d.0 / EARTH_YEAR_SECONDS as f64
    }
}

macro_rules! impl_planet {
    ($planet:ident, $orbit:literal) => {
        pub struct $planet;
        impl Planet for $planet {
            fn years_during(d: &Duration) -> f64 {
                let days_in_seconds = (EARTH_YEAR_DAYS * $orbit) * (24 * 60 * 60) as f64;
                d.0 / days_in_seconds
            }
        }
    };
}

impl_planet!(Mercury, 0.2408467);
impl_planet!(Venus, 0.61519726);
impl_planet!(Earth, 1.0);
impl_planet!(Mars, 1.8808158);
impl_planet!(Jupiter, 11.862615);
impl_planet!(Saturn, 29.447498);
impl_planet!(Uranus, 84.016846);
impl_planet!(Neptune, 164.79132);
