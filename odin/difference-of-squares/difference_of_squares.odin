package difference_of_squares

square_of_sum :: proc(n: int) -> int {
    sum := 0
    for i in 1..=n {
        sum += i
    }
	return sum * sum
}

sum_of_squares :: proc(n: int) -> int {
    sum := 0
    for i in 1..=n {
        square := i * i
        sum += square    
    }
	return sum
}

difference :: proc(n: int) -> int {
	return square_of_sum(n) - sum_of_squares(n)
}
