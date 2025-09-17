package reverse

func Reverse(input string) string {
	newInput := []rune(input)
	var reversed []rune
	for i := len(newInput) - 1; i >= 0; i-- {
		reversed = append(reversed, newInput[i])
	}

	return string(reversed)
}
