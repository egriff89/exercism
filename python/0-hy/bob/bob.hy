(import re)

(defn response [hey_bob]
  (setv question ((. (hey_bob.rstrip) endswith) "?"))
  (setv yelling ((. (hey_bob.rstrip) isupper)))
  (setv yell_question (and question yelling))
  (setv silent (. re (match r"^[\s\t\n]*$" hey_bob)))

(cond 
  yell_question (return "Calm down, I know what I'm doing!")
  question (return "Sure.")
  yelling (return "Whoa, chill out!")
  (is-not silent None) (return "Fine. Be that way!"))
  (return "Whatever."))