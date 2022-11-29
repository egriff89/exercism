package partyrobot

import "fmt"

// Welcome greets a person by name.
func Welcome(name string) string {
	return fmt.Sprintf("Welcome to my party, %s!", name)
}

// HappyBirthday wishes happy birthday to the birthday person and exclaims their age.
func HappyBirthday(name string, age int) string {
	return fmt.Sprintf("Happy birthday %s! You are now %d years old!", name, age)
}

// AssignTable assigns a table to each guest.
func AssignTable(name string, table int, neighbor, direction string, distance float64) string {

	// Convert table number to string to check its length
	tableStr := fmt.Sprintf("%d", table)
	if len(tableStr) < 3 {
		// Convert to 3 digits, padding left with zeroes
		tableStr = fmt.Sprintf("%03d", table)
	}

	// Construct table assignment string
	greeting := fmt.Sprintf("Welcome to my party, %s!", name)
	tableLoc := fmt.Sprintf("You have been assigned to table %s. ", tableStr)
	tableLoc += fmt.Sprintf("Your table is %s, exactly %.1f meters from here.", direction, distance)
	partner := fmt.Sprintf("You will be sitting next to %s.", neighbor)

	return fmt.Sprintf("%s\n%s\n%s", greeting, tableLoc, partner)
}
