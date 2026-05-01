(defpackage :difference-of-squares
  (:use :cl)
  (:export :sum-of-squares
           :square-of-sum
           :difference))

(in-package :difference-of-squares)

(defun range (n)
  "Generate list of first `n` natural numbers"
  (loop for i from 1 to n collect i))

(defun square-of-sum (n)
  "Calculates the square of the sum for a given number."
  (expt (reduce '+ (range n)) 2))

(defun sum-of-squares (n)
  "Calculates the sum of squares for a given number."
  (reduce '+ (map 'list (lambda (x) (expt x 2)) (range n))))

(defun difference (n)
  "Finds the diff. between the square of the sum and the sum of the squares."
  (- (square-of-sum n) (sum-of-squares n)))
