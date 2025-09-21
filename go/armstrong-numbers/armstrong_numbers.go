package armstrong

import (
	"math"
	"strconv"
)

func IsNumber(n int) bool {
	number := strconv.Itoa(n)
	power := len(number)

	var sum int
	for _, num := range number {
		digit := num - '0'
		sum += int(math.Pow(float64(digit), float64(power)))
	}

	return sum == n
}
