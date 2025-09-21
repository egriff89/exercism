(import unittest)
(import hello_world [hello])

;; Tests adapted from `problem-specifications//canonical-data.json`

(defclass HelloWorldTest [unittest.TestCase]
  (defn test_say_hi [self]
    (self.assertEqual (hello) "Hello, World!")))

(if (= __name__ "__main__")
  (unittest.main)
  None)