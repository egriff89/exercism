package grains

import (
	"errors"
	"math"
)

func Square(number int) (uint64, error) {
	grains := make([]uint64, 64)

	if number < 1 || number > 64 {
		return 0, errors.New("must be between 1 and 64, inclusive")
	}

	for idx := range grains {
		if idx == 0 {
			grains[idx] = 1
			continue
		}
		grains[idx] = grains[idx-1] * 2
	}

	return grains[number-1], nil
}

func Total() uint64 {
	return math.MaxUint64
}
