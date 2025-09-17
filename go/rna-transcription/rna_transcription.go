package strand

var complements = map[rune]string{
	'G': "C",
	'C': "G",
	'T': "A",
	'A': "U",
}

func ToRNA(dna string) string {
	var newStrand string
	for _, strand := range dna {
		c := complements[strand]
		newStrand += c
	}
	return newStrand
}
