type base = int

val validate_inputs : base_from: base -> base_target: base -> int list -> bool
val convert_bases : from: base -> digits: base list -> target: base -> (int list) option
