(define (countdown n)
  (if (< n 0)
      '()
      (cons n (countdown (- n 1)))))

(define (range a . b)
  (if (null? b)
      (reverse (countdown (- a 1)))
      (reverse (map (lambda (n) (+ n a)) (countdown (- (- (car b) 1) a))))))

(define (filter fn lst)
  (if (null? lst)
      '()
      (if (fn (car lst))
          (cons (car lst) (filter fn (cdr lst)))
          (filter fn (cdr lst)))))

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

(define (reduce fn accum lst)
  (if (null? lst)
      accum
      (reduce fn (fn accum (car lst)) (cdr lst))))
