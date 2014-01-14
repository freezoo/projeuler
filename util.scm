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

