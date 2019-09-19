#lang sicp
;; Ex. 1.6: new-if
(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (square x)
  (* x x))
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
;;(new-if (= 2 3) 0 5)
;;(new-if (= 1 1) 0 5)

;; if uses normal order so it will terminate on tail recursion
;; new-if uses applicative order and does not terminate on tail
;; recursion of sqrt-iter
