// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven() -> Int {
  40
}

// Please define the remaining_minutes_in_oven function
pub fn remaining_minutes_in_oven(actual_minutes_in_oven: Int) -> Int {
  expected_minutes_in_oven() - actual_minutes_in_oven
}

// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(layers_added: Int) -> Int {
  layers_added * 2
}

// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(layers: Int, minutes_in_oven: Int) -> Int {
  preparation_time_in_minutes(layers) + minutes_in_oven
}

// Please define the alarm function
pub fn alarm() -> String {
  "Ding!"
}
