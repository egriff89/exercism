(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven ()
  "How many minutes the lasagna should be in the oven"
  337)

(defun remaining-minutes-in-oven (actual-minutes-in-oven)
  "How many minutes the lasagna still needs to stay in the oven"
  (- (expected-time-in-oven) actual-minutes-in-oven))

(defun preparation-time-in-minutes (number-of-layers)
  "Minutes spent preparing the lasagna, assuming 19 minutes per layer"
  (* number-of-layers 19))

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (number-of-layers minutes-in-oven)
  "How many minutes the lasagna has been cooking"
  (+ (preparation-time-in-minutes number-of-layers) minutes-in-oven))