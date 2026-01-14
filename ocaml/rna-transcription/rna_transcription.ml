type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

let rec to_rna dna = match dna with
| [] -> []
| `A :: t -> `U :: to_rna t
| `C :: t -> `G :: to_rna t
| `G :: t -> `C :: to_rna t
| `T :: t -> `A :: to_rna t