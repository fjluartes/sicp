#lang sicp
;; Ex. 1.9: Adding two positive integers using inc and dec
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))
;; (define (+ a b)
;;   (if (= a 0) b (+ (dec a) (inc b))))

;; First procedure is recursive.
;; inc is expanded first, then reduced to get the answer 9
;; Second procedure is iterative.
;; + only tracks (dec a) and (inc b) even if procedure is recursive.

