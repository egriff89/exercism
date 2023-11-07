pub fn reply(message: &str) -> &str {
    let message = message.trim_end();
    let question = message.ends_with('?');
    let yelling = message.chars().any(|c| c.is_alphabetic()) && message == message.to_uppercase();

    if message.is_empty() {
        return "Fine. Be that way!";
    }

    match (question, yelling) {
        (true, true) => "Calm down, I know what I'm doing!",
        (true, _) => "Sure.",
        (_, true) => "Whoa, chill out!",
        _ => "Whatever."
    }
}