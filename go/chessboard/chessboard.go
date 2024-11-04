package chessboard

// Declare a type named File which stores if a square is occupied by a piece - this will be a slice of bools
type File []bool

// Declare a type named Chessboard which contains a map of eight Files, accessed with keys from "A" to "H"
type Chessboard map[string]File

// CountInFile returns how many squares are occupied in the chessboard,
// within the given file.
func CountInFile(cb Chessboard, file string) int {
	occupied := 0
	for _, f := range cb[file] {
		if f {
			occupied += 1
		}
	}

	return occupied
}

// CountInRank returns how many squares are occupied in the chessboard,
// within the given rank.
func CountInRank(cb Chessboard, rank int) int {
	if rank < 1 || rank > 8 {
		return 0
	}

	files := []string{"A", "B", "C", "D", "E", "F", "G", "H"}
	var row File

	for _, f := range files {
		row = append(row, cb[f][rank-1])
	}

	occupied := 0
	for _, square := range row {
		if square {
			occupied += 1
		}
	}

	return occupied
}

// CountAll should count how many squares are present in the chessboard.
func CountAll(cb Chessboard) int {
	squares := 0
	for i := range cb {
		squares += len(cb[i])
	}

	return squares
}

// CountOccupied returns how many squares are occupied in the chessboard.
func CountOccupied(cb Chessboard) int {
	occupied := 0
	for file := range cb {
		for _, square := range cb[file] {
			if square {
				occupied += 1
			}
		}
	}

	return occupied
}
