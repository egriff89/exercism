package collatz_conjecture

// Returns the number of steps to get to a value of 1.
steps :: proc(start: int) -> (result: int, ok: bool) {
    if start <= 0 {
        return 0, false
    }

    count := 0
    number := start
    for i := 0; number >= 1; i += 1 {
        if number == 1 {
            return count, true 
        }

        if number % 2 == 0 {
            number /= 2
        } else {
            number = (3 * number) + 1
        }
        count += 1
    }

    return count, true
}
