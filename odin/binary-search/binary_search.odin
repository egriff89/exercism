package binary_search

find :: proc(haystack: []$T, needle: T) -> (index: int, found: bool) #optional_ok {
	if len(haystack) == 0 || needle < haystack[0] {
		return 0, false
	}

	low := 0
	high := len(haystack) - 1

	for low <= high {
		mid := low + (high - low) / 2
		if needle == haystack[mid] {
			return mid, true
		} else if needle < haystack[mid] {
			high = mid - 1
		} else {
			low = mid + 1
		}
	}

	return 0, false
}
