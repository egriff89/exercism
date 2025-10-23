package binarysearch

func SearchInts(list []int, key int) int {
	if len(list) == 0 {
		return -1
	}

	var left, right int = 0, len(list) - 1

	for left <= right {
		mid := left + (right-left)/2

		if key == list[mid] {
			return mid
		} else if key < list[mid] {
			right = mid - 1
		} else {
			left = mid + 1
		}
	}

	return -1
}
