#lang sicp
;; Ex. 1.1 
(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

