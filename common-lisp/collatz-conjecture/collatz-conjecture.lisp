(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz-aux (n step)
  (if (= 1 n)
      step
      (if (evenp n)
          (collatz-aux (/ n 2) (incf step))
          (collatz-aux (+ (* 3 n) 1) (incf step)))))

(defun collatz (n)
  (if (< n 1)
      nil
      (collatz-aux n 0)))
