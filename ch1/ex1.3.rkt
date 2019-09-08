#lang sicp
;; Ex. 1.3: Procedure that takes three numbers as arguments and
;; returns sum of squares of two larger numbers
(define (square a)
  (* a a))
(define (sum-squares a b)
  (+ (square a) (square b)))
(define (sq2largest a b c)
  (cond ((and (>= a b) (>= b c)) (sum-squares a b))
        ((and (>= a b) (>= c b)) (sum-squares a c))
        ((and (>= b c) (>= c a)) (sum-squares b c))))
(sq2largest 2 5 3)
(sq2largest 9 7 8)
(sq2largest 5 4 6)
