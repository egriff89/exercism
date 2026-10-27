package bob

import "core:strings"
import "core:unicode"

response :: proc(input: string) -> string {
	input := strings.trim_space(input)
	if len(input) == 0 {
		return "Fine. Be that way!"
	}

	is_question := strings.has_suffix(input, "?")
	has_letter := false
	is_yelling := true
	for r in input {
		if unicode.is_letter(r) {
			has_letter = true
			if !unicode.is_upper(r) {
				is_yelling = false
			}
		}
	}
	is_yelling &&= has_letter

	if is_yelling && is_question {
		return "Calm down, I know what I'm doing!"
	} else if is_question {
		return "Sure."
	} else if is_yelling {
		return "Whoa, chill out!"
	}

	return "Whatever."
}
