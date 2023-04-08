import math

proc isArmstrongNumber*(number: int): bool =
    if number <= 9:
        return true
    
    var total: int = 0
    for num in $number:
        total += (num.int - '0'.int) ^ ($number).len()

    return total == number