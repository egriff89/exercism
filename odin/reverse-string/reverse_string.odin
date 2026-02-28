package reverse_string

import "core:strings"
import "core:unicode/utf8"

reverse :: proc(str: string) -> string {
    graphemes, grapheme_count, _, _ := utf8.decode_grapheme_clusters(str)
    defer delete(graphemes)
    
    if str == "" || grapheme_count == 0 {
        return ""
    }

    b: strings.Builder
    strings.builder_init(&b)
    defer strings.builder_destroy(&b)

    strings.builder_grow(&b, len(str))
    for i in 0..<grapheme_count {
        // Reverse order
        g_idx := grapheme_count - 1 - i
        start := graphemes[g_idx].byte_index

        // End is start of next grapheme/end of string
        end := len(str)
        if g_idx + 1 < grapheme_count {
            end = graphemes[g_idx + 1].byte_index
        }

        // Slice and append the exact grapheme bytes
        strings.write_string(&b, str[start:end])
    }

    return strings.to_string(b)
}