package perfect_numbers

Classification :: enum {
	Perfect,
	Abundant,
	Deficient,
	Undefined,
}

get_factors :: proc(number: uint) -> []uint {
    factors: [dynamic]uint
    defer delete(factors)

    for f in 1..<number {
        if number % f == 0 {
            append(&factors, f)
        }
    }

    return factors[:]
}

classify :: proc(number: uint) -> Classification {
    if number <= 0 {
        return .Undefined
    }

	sum: uint = 0
    for i in get_factors(number) {
        sum += i
    }

    if number == sum {
        return .Perfect
    } else if number < sum {
        return .Abundant
    } else if number > sum {
        return .Deficient
    }
    
    return .Undefined
}
