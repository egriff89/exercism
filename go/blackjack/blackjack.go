package blackjack

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
	var value int
	switch card {
	case "ace":
		value = 11
	case "two":
		value = 2
	case "three":
		value = 3
	case "four":
		value = 4
	case "five":
		value = 5
	case "six":
		value = 6
	case "seven":
		value = 7
	case "eight":
		value = 8
	case "nine":
		value = 9
	case "ten":
		value = 10
	case "jack":
		value = 10
	case "queen":
		value = 10
	case "king":
		value = 10
	default:
		value = 0
	}
	return value
}

// FirstTurn returns the decision for the first turn, given two cards of the
// player and one card of the dealer.
func FirstTurn(card1, card2, dealerCard string) string {
	var response string

	card1Parsed := ParseCard(card1)
	card2Parsed := ParseCard(card2)
	dealerParsed := ParseCard(dealerCard)
	cardSums := card1Parsed + card2Parsed

	switch {
	case card1 == "ace" && card2 == "ace":
		response = "P"
	case cardSums == 21 && dealerParsed != 10 && dealerParsed != 11:
		response = "W"
	case cardSums == 21 && (dealerParsed == 10 || dealerParsed == 11):
		response = "S"
	case cardSums >= 17 && cardSums <= 20:
		response = "S"
	case (cardSums >= 12 && cardSums <= 16) && dealerParsed >= 7:
		response = "H"
	case cardSums >= 12 && cardSums <= 16:
		response = "S"
	case cardSums <= 11:
		response = "H"
	}

	return response
}
