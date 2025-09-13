package hamming

import (
	"errors"
	"unicode/utf8"
)

func Distance(a, b string) (int, error) {
	if utf8.RuneCountInString(a) != utf8.RuneCountInString(b) {
		return 0, errors.New("not equal length")
	}

	var distance int
	for i := range a {
		if a[i] != b[i] {
			distance += 1
		}
	}

	return distance, nil
}
