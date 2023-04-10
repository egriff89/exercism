type Allergen* = enum
    Eggs,
    Peanuts,
    Shellfish,
    Strawberries,
    Tomatoes,
    Chocolate,
    Pollen,
    Cats

proc isAllergicTo*(score: int, allergen: Allergen): bool =
    return (score and (1 shl ord(allergen))) != 0

proc allergies*(score: int): set[Allergen] =
    var allergens: set[Allergen]
    for a in Allergen:
        if isAllergicTo(score, a):
            allergens.incl(a)
    return allergens