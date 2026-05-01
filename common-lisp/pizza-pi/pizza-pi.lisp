(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
  (nth-value 0
             (round
               (* pizzas (+ (/ (* 45 (* PI diameter)) 20) 200)))))

(defun size-from-sauce (sauce)
  (sqrt (/ (* 40 sauce) (* 3 PI))))

(defun pizzas-per-cube (cube-size diameter)
  (nth-value 0
             (floor
               (/ (* 2 (expt cube-size 3)) (* 3 (* PI (expt diameter 2)))))))

(defun fair-share-p (pizzas friends)
  (let ((slices 8))
    (= (mod (* pizzas slices) friends) 0)))
