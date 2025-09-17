package strain

// https://go.dev/tour/generics/1
// Implement the "Keep" and "Discard" function in this file.
func Keep[T any](coll []T, predicate func(T) bool) []T {
	var el []T
	for _, e := range coll {
		if predicate(e) {
			el = append(el, e)
		}
	}
	return el
}

func Discard[T any](coll []T, predicate func(T) bool) []T {
	var el []T
	for _, e := range coll {
		if !predicate(e) {
			el = append(el, e)
		}
	}
	return el
}
