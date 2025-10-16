;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  "Apply OP to each element of LST and return a new list of the results."
  (if (= (length lst) 0)
      nil
    (mapcar op lst)))


(provide 'accumulate)
;;; accumulate.el ends here
