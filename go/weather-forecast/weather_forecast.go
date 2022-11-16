// Package weather: Displays the current weather condition of a city.
package weather

// CurrentCondition: A city's current weather condition.
var CurrentCondition string

// CurrentLocation: The location of a city.
var CurrentLocation string

// Forecast: Displays the current weather condition of a city provided by the user(s).
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
