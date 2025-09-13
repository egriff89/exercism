package gigasecond

import "time"

const GIGASECOND int = 1_000_000_000

func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Duration(GIGASECOND) * time.Second)
}
