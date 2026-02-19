package two_fer

import "core:fmt"

two_fer :: proc(name: string = "") -> string {
	if name != "" {
        return fmt.tprintf("One for %s, one for me.", name)
    }
	return "One for you, one for me."
}
