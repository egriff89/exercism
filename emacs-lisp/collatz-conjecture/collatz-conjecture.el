;;; collatz-conjecture.el --- Collatz Conjecture (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun steps (number)
  "Count the steps to reach 1 using the Collatz conjecture."
  (when (<= number 0)
    (error "Cannot be negative"))
  (let ((n number)
        (count 0))
    (while (> n 1)
      (setq n (if (= 0 (mod n 2))
                  (/ n 2)
                (+ 1 (* 3 n))))
      (setq count (1+ count)))
    count))

(provide 'collatz-conjecture)
;;; collatz-conjecture.el ends here
