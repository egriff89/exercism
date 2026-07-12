package grains

Error :: enum {
	None = 0,
	InvalidSquare,
	Unimplemented,
}

// Returns the number of grains on the specified square.
square :: proc(n: int) -> (u64, Error) {
	if n <= 0 || n > 64 {
		return 0, .InvalidSquare
	}

	board: [64]u64
	board[0] = 1

	for i in 1 ..< 64 {
		board[i] = 2 * board[i - 1]
	}

	return board[n - 1], .None
}

// Returns the total number of squares on the board.
total :: proc() -> (u64, Error) {
	return max(u64), .None
}

