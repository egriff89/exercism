def is_pangram(sentence):
    chars = dict()
    ignore = ['-', '_', ' ', '.', '"']
    for i in sentence.lower():
        if i in ignore or i.isdigit(): 
            continue
        elif i in chars.keys():
            chars[i] += 1
        else:
            chars.update({i: 1})
    return True if len(chars.keys()) == 26 else False