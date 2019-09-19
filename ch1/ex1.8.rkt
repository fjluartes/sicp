#lang sicp
;; Ex. 1.8: Cube Roots by using Newton's Method
(define (cbrt x)
  (cbrt-iter 1.0 x))
(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (cube guess) x))
     (* 0.000001 x)))
(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* guess 2))
     3))
(define (cube x)
  (* x x x))
(define (square x)
  (* x x))
