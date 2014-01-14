(load "projeuler/util.scm")

(define (is-mult-of n div)
  (= 0 (remainder n div)))

(define (is-mult-of-3-or-5 n)
  (or (is-mult-of n 3)
      (is-mult-of n 5)))

(apply + (filter is-mult-of-3-or-5 (countdown 999)))
