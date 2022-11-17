package cars

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * (successRate / 100.0)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate)) / 60
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	const PricePerCar = 10_000
	const PricePerTenCars = 95_000

	var costOfTen uint = uint(PricePerTenCars * (carsCount / 10))
	var costOfOne uint = uint(PricePerCar * (carsCount % 10))

	return costOfTen + costOfOne
}
