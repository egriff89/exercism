def is_isogram(string):
    chars = set()
    for i in string.lower():
        if i == '-' or i == ' ': continue
        elif i in chars: return False
        else: chars.add(i)
    return True
