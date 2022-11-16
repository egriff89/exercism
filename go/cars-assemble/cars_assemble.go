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
	var pricePerCar uint = 10_000
	var pricePerTenCars uint = 95_000
	var groupsOfTen = (carsCount / 10)
	var singleCars = (carsCount % 10)

	if carsCount == 10 {
		return pricePerTenCars
	}

	if carsCount > 10 {
		return (uint(groupsOfTen) * pricePerTenCars) + (uint(singleCars) * pricePerCar)
	}

	return uint(carsCount) * pricePerCar
}
