(define (fib-symbol index)
  (string->symbol (string-append "fib" (number->string index))))

(define (get-fib n)
  (cond ((= n 0) 1)
        ((= n 1) 2)
        (else (if (> (fib-symbol n) 0)
                  (fib-symbol n)
                  (+ (get-fib (- n 1)) (get-fib (- n 2)))))))

(define (fib-list limit)
  )

(get-fib 2)
fib3
(> fib3 0)
(set! fib3 0)|
(string-append "abc" (number->string 2))
(string->symbol "abc2")
(null? 'asdf)
