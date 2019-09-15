#lang sicp
;; Ex. 1.3: Procedure that takes three numbers as arguments and
;; returns sum of squares of two larger numbers
(define (square x)
  (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (sq2largest x y z)
  (cond ((and (>= x y) (>= y z)) (sum-of-squares x y))
        ((and (>= y x) (>= z x)) (sum-of-squares y z))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))))
(sq2largest 5 4 3)
;; 41
(sq2largest 7 8 9)
;; 145
(sq2largest 5 4 6)
;; 61
