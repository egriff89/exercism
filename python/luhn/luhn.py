import re


class Luhn:
    def __init__(self, card_num: str):
        self.card_num = card_num

    def valid(self) -> bool:
        card_num = "".join(self.card_num.split())

        if len(card_num) <= 1:
            return False
        if len(re.findall(r"\D+", card_num)) > 0:
            return False

        new_num: list[int] = []
        for idx, digit in enumerate(card_num[::-1]):
            if idx % 2 != 0:
                digit = int(digit) * 2
                if digit > 9:
                    digit -= 9
            new_num.append(int(digit))

        if sum(new_num) % 10 == 0:
            return True

        return False
