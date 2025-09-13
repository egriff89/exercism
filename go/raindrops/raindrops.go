package raindrops

import "fmt"

func contains(factors []int, number int) bool {
	for _, n := range factors {
		if n == number {
			return true
		}
	}
	return false
}

func getFactors(number int) []int {
	var factors []int
	for _, i := range []int{3, 5, 7} {
		if number%i == 0 {
			factors = append(factors, i)
		}
	}

	return factors
}

func Convert(number int) string {
	var sound string
	factors := getFactors(number)

	if !contains(factors, 3) && !contains(factors, 5) && !contains(factors, 7) {
		return fmt.Sprintf("%d", number)
	}

	if contains(factors, 3) {
		sound += "Pling"
	}
	if contains(factors, 5) {
		sound += "Plang"
	}
	if contains(factors, 7) {
		sound += "Plong"
	}

	return sound
}
