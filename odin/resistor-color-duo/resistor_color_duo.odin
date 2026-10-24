package resistor_color_duo

import "core:fmt"
import "core:strconv"
import "core:strings"

Color :: enum {
	Black,
	Brown,
	Red,
	Orange,
	Yellow,
	Green,
	Blue,
	Violet,
	Grey,
	White,
}

Error :: enum {
	None,
	TooFewColors,
}

value :: proc(colors: []Color) -> (int, Error) {
	if len(colors) < 2 {
		return 0, .TooFewColors
	}

	builder: strings.Builder
	defer strings.builder_destroy(&builder)

	for color in colors[:2] {
		strings.write_string(&builder, fmt.tprintf("%d", int(color)))
	}

	bands_str := string(builder.buf[:])
	bands, _ := strconv.parse_int(bands_str, 10)
	return bands, .None
}
