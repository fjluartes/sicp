#lang sicp
;; Ex 1.10: Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

;; f(n) = 2n
;; g(n) = 2^n
;; h(n) = 2^h(n-1) where h(1) = 2
;; k(n) = 5n^2
