#lang sicp
;; Ex 1.11: function f (recursive and iterative process)
;; iterative
(define (f n)
  (f-iter 4 2 1 n))
(define (f-iter a b c count)
  (if (= count 1)
      c
      (f-iter (+ a
                 (* b 2)
                 (* c 3)) a b (- count 1))))

;; recursive
;; (define (f n)
;;   (if (< n 3)
;;       n
;;       (+ (f (- n 1))
;;          (* (f (- n 2)) 2)
;;          (* (f (- n 3)) 3))))
