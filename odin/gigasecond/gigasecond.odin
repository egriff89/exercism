package gigasecond

import "core:time/datetime"

GIGASECOND : i64 : 1_000_000_000

add_gigasecond :: proc(moment: datetime.DateTime) -> datetime.DateTime {
	delta := datetime.Delta{seconds = GIGASECOND}
	result, _ := datetime.add_delta_to_datetime(moment, delta)
	return result
}
