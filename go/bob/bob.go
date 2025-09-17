package bob

import (
	"regexp"
	"strings"
)

func Hey(remark string) string {
	remark = strings.TrimSpace(remark)
	question := regexp.MustCompile(`^.*\?$`).MatchString(remark)
	yelling := regexp.MustCompile(`^[^a-z]*[A-Z][^a-z]*!?$`).MatchString(remark)
	yellQuestion := regexp.MustCompile(`^[^a-z]*[A-Z][^a-z]*\?$`).MatchString(remark)
	silent := regexp.MustCompile(`\s+`).ReplaceAllString(remark, "")

	if silent == "" {
		return "Fine. Be that way!"
	} else if yellQuestion {
		return "Calm down, I know what I'm doing!"
	} else if yelling {
		return "Whoa, chill out!"
	} else if question {
		return "Sure."
	}

	return "Whatever."
}
