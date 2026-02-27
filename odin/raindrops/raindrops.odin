package raindrops

import "core:fmt"
import "core:strings"

div :: proc(number, divisor: int) -> bool {
    return number % divisor == 0
}

convert :: proc(number: int) -> string {
    message: [dynamic]string
    defer delete(message)

    if div(number, 3) {
        append(&message, "Pling")
    }
    if div(number, 5) {
        append(&message, "Plang")
    }
    if div(number, 7) {
        append(&message, "Plong")
    }

    if len(message) > 0 {
        return strings.join(message[:], "", allocator=context.temp_allocator)
    }

    return fmt.tprintf("%d", number)
}
