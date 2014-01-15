(define (factor n factors i)
  (if (= i n)
      (cons n factors)
      (if (= 0 (remainder n i))
          (factor (/ n i) (cons i factors) 2)
          (factor n factors (+ 1 i)))))

(factor 12 '() 1)
(factor 75 '() 1)
(factor 9 '() 1)
(factor 13195 '() 1)

(define (prime? n)
  (define (iter n i)
    (if (= n i)
        #t
        (if (= 0 (remainder n i))
            #f
            (iter n (+ 1 i)))))
  (if (< n 3)
      #t
      (iter n 2)))

(prime? 12)
(prime? 4)
(prime? 1)

(load "projeuler/util.scm")
(filter prime? (factor 600851475143 '() 1))
(filter prime? '(1 2 3 19 20 22))
(factor 600851475143 '() 1)
(factor 600851475143 '() 1)
(prime? 6857)

(= 0 (remainder 18.0 2))
