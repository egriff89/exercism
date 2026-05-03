(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute sec)
  (multiple-value-bind (new-sec new-min new-hour new-day new-month new-year)
      (decode-universal-time
        (+ (encode-universal-time sec minute hour day month year 0) 1000000000) 0)
    (list new-year new-month new-day new-hour new-min new-sec)))
