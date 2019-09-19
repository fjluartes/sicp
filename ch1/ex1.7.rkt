#lang sicp
;; Ex. 1.7: good-enough? for very small and very large numbers
(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     (* 0.000001 x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (square x)
  (* x x))

;; very small number
(square (sqrt 0.0000125))
;; old ans: 6.95332558820999e-005
;; new ans: 1.2500000000013196e-005
;; very large number
;; (sqrt 123456789000)
;; old ans: does not finish computing
;; new ans: 123456789021.13762
