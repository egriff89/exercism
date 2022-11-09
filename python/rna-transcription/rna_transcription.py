def to_rna(dna_strand):
    complements = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}

    if dna_strand == '':
        return ''
    elif len(dna_strand) == 1:
        return complements[dna_strand]

    rna = ''
    for d in dna_strand:
        if complements[d]:
            rna += complements[d]
    return rna