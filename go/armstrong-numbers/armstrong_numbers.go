package armstrong

import (
	"math"
	"strconv"
)

func IsNumber(n int) bool {
	number := strconv.Itoa(n)
	power := len(number)

	if power == 1 || n < 0 {
		return true
	}

	var sum int
	for _, num := range number {
		digit := num - '0'
		sum += int(math.Pow(float64(digit), float64(power)))
	}

	return sum == n
}
