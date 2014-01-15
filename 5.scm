(load "projeuler/3.scm")
(factor 20 '() 2)

(define (get-factors n)
  (factor n '() 2))
(get-factors 18)

(define (div-by-1-to-20 n)
  (define (iter n i)
    (if (= i 2)
        #t
        (if (not (= (remainder n i) 0))
            #f
            (iter n (- i 1)))))
  (iter n 20))

(define (smallest-n i)
  (if (div-by-1-to-20 i)
      (display i)
      (smallest-n (+ i 1))))

;; takes a long time
(smallest-n 3)
(div-by-1-to-20 4)
