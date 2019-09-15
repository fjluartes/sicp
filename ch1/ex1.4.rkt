#lang sicp
;; Ex. 1.4: a-plus-abs-b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
(a-plus-abs-b 3 4)
;; 7
(a-plus-abs-b 3 -7)
;; 10
;; If b > 0, function will be (+ a b)
;; If b < 0, function will be (- a b) and b is negative so it'll be (+ a b)
