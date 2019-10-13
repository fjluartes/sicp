#lang sicp
(define (repeat-iter n count)
  (display n)
  (if (= count 1)
      (newline)
      (repeat-iter n (- count 1))))
(repeat-iter "ha" 3)
