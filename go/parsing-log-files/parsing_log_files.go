package parsinglogfiles

import (
	"fmt"
	"regexp"
)

func IsValidLine(text string) bool {
	r := regexp.MustCompile(`^\[(TRC|DBG|INF|WRN|ERR|FTL)\]`)
	return r.MatchString(text)
}

func SplitLogLine(text string) []string {
	r := regexp.MustCompile(`\<[\*~=\-]*\>`)
	return r.Split(text, -1)
}

func CountQuotedPasswords(lines []string) int {
	r := regexp.MustCompile(`\".*pass[wW]ord.*\"`)
	var matches []string
	for _, line := range lines {
		if r.MatchString(line) {
			matches = append(matches, line)
		}
	}
	return len(matches)
}

func RemoveEndOfLineText(text string) string {
	r := regexp.MustCompile(`(end-of-line\d+)`)
	match := r.ReplaceAllString(text, "")
	return match
}

func TagWithUserName(lines []string) []string {
	r := regexp.MustCompile(`User\s+([\w\d]+)`)
	var matches []string
	for _, line := range lines {
		if r.MatchString(line) {
			user := r.FindStringSubmatch(line)[1]
			l := fmt.Sprintf("[USR] %s %s", user, line)
			matches = append(matches, l)
		} else {
			matches = append(matches, line)
		}
	}
	return matches
}
