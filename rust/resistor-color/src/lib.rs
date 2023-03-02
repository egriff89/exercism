use int_enum::IntEnum;
use enum_iterator::{Sequence, all};

#[repr(u32)]
#[derive(Debug, PartialEq, Eq, IntEnum, Clone, Copy, Sequence)]
pub enum ResistorColor {
    Black = 0,
    Brown = 1,
    Red = 2,
    Orange = 3,
    Yellow = 4,
    Green = 5,
    Blue = 6,
    Violet = 7,
    Grey = 8,
    White = 9,
}

impl std::fmt::Display for ResistorColor {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "{:?}", self)
    }
}

pub fn color_to_value(color: ResistorColor) -> u32 {
    return color.int_value();
}

pub fn value_to_color_string(value: u32) -> String {
    return match ResistorColor::from_int(value) {
        Ok(color) => color.to_string(),
        Err(_) => String::from("value out of range")
    }
}

pub fn colors() -> Vec<ResistorColor> {
    return all::<ResistorColor>().collect::<Vec<ResistorColor>>();
}
