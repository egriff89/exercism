package armstrong_numbers

import "core:fmt"
import "core:strconv"

is_armstrong_number :: proc(n: u128) -> bool {
    str_number := fmt.tprintf("%d", n)
    switch len(str_number) {
        case 1:
            return true
        case 2:
            return false
    }

    sum: u128 = 0
    power := len(str_number)
    for i in 0..<power {
        digit, _ := strconv.digit_to_int(rune(str_number[i]))

        result: u128 = 1
        for _ in 0..<power {
            result *= u128(digit)
        }
        sum += result
    }

    return sum == n
}
