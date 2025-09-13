package space

type Planet string

const EARTH_YEAR_DAYS float64 = 365.25

var Orbits = map[Planet]float64{
	"Mercury": 0.2408467,
	"Venus":   0.61519726,
	"Earth":   1.0,
	"Mars":    1.8808158,
	"Jupiter": 11.862615,
	"Saturn":  29.447498,
	"Uranus":  84.016846,
	"Neptune": 164.79132,
}

func Age(seconds float64, planet Planet) float64 {
	orbit, ok := Orbits[planet]
	if !ok {
		return -1.0
	}

	daysInSeconds := (EARTH_YEAR_DAYS * orbit) * (24 * 60 * 60)
	return seconds / daysInSeconds
}
