package binary_search_tree

Tree :: ^Node

Node :: struct {
	value: int,
	left:  Tree,
	right: Tree,
}

destroy_tree :: proc(t: Tree) {
	if t == nil {
		return
	}
	destroy_tree(t.left)
	destroy_tree(t.right)
	free(t)
}

insert :: proc(t: ^Tree, value: int) {
	if t^ == nil {
		t^ = new(Node)
		t^.value = value
		t^.left = nil
		t^.right = nil
	} else if value < t^.value || value == t^.value {
		insert(&t^.left, value)
	} else {
		insert(&t^.right, value)
	}

}

sorted_data :: proc(t: Tree) -> []int {
	result: [dynamic]int
	sorted_helper(t, &result)
	return result[:]
}

sorted_helper :: proc(t: Tree, result: ^[dynamic]int) {
	if t == nil {
		return
	}
	sorted_helper(t.left, result)
	append(result, t.value)
	sorted_helper(t.right, result)
}
