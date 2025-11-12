package jedlik

import "fmt"

func (c *Car) Drive() {
	if c.battery-c.batteryDrain < 0 {
		return
	}
	c.distance += c.speed
	c.battery -= c.batteryDrain
}

func (c Car) DisplayDistance() string {
	return fmt.Sprintf("Driven %d meters", c.distance)
}

func (c Car) DisplayBattery() string {
	return fmt.Sprintf("Battery at %d%%", c.battery)
}

func (c Car) CanFinish(trackDistance int) bool {
	if c.batteryDrain == c.speed {
		return false
	}

	remainingDistance := trackDistance - c.distance
	laps := remainingDistance / c.speed
	remainingBattery := laps * c.batteryDrain

	return remainingBattery <= c.battery
}
