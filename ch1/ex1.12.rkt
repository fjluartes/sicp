#lang sicp
;; Ex 1.12: Pascal's Triangle
(define (pascal n)
  (define (p-iter n counter)
    (display (coeff n counter))
    (newline)
    (if (= counter n)
        1
        (p-iter n (+ counter 1))))
  (p-iter n 0))

;; n choose k
(define (coeff n k)
  (/ (fac n)
     (* (fac k)
        (fac (- n k)))))

;; block structure fact-iter
(define (fac n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* product counter)
              (+ counter 1))))
  (iter 1 1))
