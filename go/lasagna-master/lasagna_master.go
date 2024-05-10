package lasagna

func PreparationTime(layers []string, time int) int {
	if time == 0 {
		time = 2
	}
	return len(layers) * time
}

func Quantities(layers []string) (int, float64) {
	noodles := 0
	sauce := 0.0

	for _, layer := range layers {
		if layer == "noodles" {
			noodles += 50
		}

		if layer == "sauce" {
			sauce += 0.2
		}
	}
	return noodles, sauce
}

func AddSecretIngredient(friendsList, myList []string) {
	secret := friendsList[len(friendsList)-1:]
	copy(myList[len(myList)-1:], secret)
}

func ScaleRecipe(twoPortions []float64, portions int) []float64 {
	ratio := float64(portions) / 2
	scaled := make([]float64, len(twoPortions))
	for idx, quantity := range twoPortions {
		scaled[idx] = quantity * float64(ratio)
	}
	return scaled
}
