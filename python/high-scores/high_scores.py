class HighScores:
    scores: list[int] = list()

    def __init__(self, scores: list[int]) -> None:
        self.scores = scores

    def personal_best(self) -> int:
        return max(self.scores)

    def personal_top_three(self) -> list[int]:
        return (sorted(self.scores)[::-1])[0:3]

    def latest(self) -> int:
        return self.scores[-1]
