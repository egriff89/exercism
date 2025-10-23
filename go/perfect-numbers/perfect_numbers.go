package perfect

import "errors"

type Classification string

const (
	ClassificationPerfect   = "ClassificationPerfect"
	ClassificationAbundant  = "ClassificationAbundant"
	ClassificationDeficient = "ClassificationDeficient"
)

var ErrOnlyPositive = errors.New("Number cannot be negative")

func factors(n int64) []int64 {
	var factors []int64
	for i := int64(1); i < n; i++ {
		if n%i == 0 {
			factors = append(factors, i)
		}
	}
	return factors
}

func Classify(n int64) (Classification, error) {
	if n <= 0 {
		return "", ErrOnlyPositive
	}

	factors := factors(n)
	var sum int64
	for _, factor := range factors {
		sum += factor
	}

	if n == sum {
		return ClassificationPerfect, nil
	} else if n < sum {
		return ClassificationAbundant, nil
	} else {
		return ClassificationDeficient, nil
	}
}
