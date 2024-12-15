import re


def response(hey_bob: str) -> str:
    question = hey_bob.rstrip().endswith("?")
    yelling = hey_bob.rstrip().isupper()
    yell_question = question and yelling
    silent: re.Match[str] | None = re.match(r"^[\s\t\n]*$", hey_bob)

    if yell_question:
        return "Calm down, I know what I'm doing!"
    elif question:
        return "Sure."
    elif yelling:
        return "Whoa, chill out!"
    elif silent is not None:
        return "Fine. Be that way!"

    return "Whatever."
