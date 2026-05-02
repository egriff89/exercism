(defpackage :leap
  (:use :cl)
  (:export :leap-year-p))

(in-package :leap)

(defun leap-year-p (year)
  (or (zerop (mod year 400))
      (and (not (zerop (mod year 100)))
           (zerop (mod year 4)))))
