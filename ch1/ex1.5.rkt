#lang sicp
;; Ex. 1.5: Applicative-order vs Normal-order evaluation
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
(test 0 (p))
;; applicative-order
;; (test 0 (p))
;; => (test 0 (p))
;; => (test 0 (p)) ...
;; never terminates because (p) will be evaluated again
;;
;; normal-order
;; (test 0 (p))
;; => (if (=  0 0) 0 (p))
;; => 0
