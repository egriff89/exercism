(import (rnrs))

;; List library (srfi-1)
(use-modules (srfi srfi-1))

(define (square-of-sum n)
  (let ([lst (iota n 1)])
    (define sum (fold + 0 lst))
    (expt sum 2)))

(define (sum-of-squares n)
  (let ([lst (iota n 1)])
    (define squares (map (lambda (x) (* x x)) lst))
    (fold + 0 squares)))

(define (difference-of-squares n)
  (- (square-of-sum n) (sum-of-squares n)))

