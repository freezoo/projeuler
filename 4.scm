(reverse-string "abc")

(define (is-palindrome n)
  (string=? (reverse-string (number->string n))
            (number->string n)))

(is-palindrome 90099)

(load "projeuler/util.scm")
(range 3)
(* 900 900)

(define (product-of n lst)
  (define (iter n lst result)
    (if (null? lst)
        result
        (iter n (cdr lst) (cons (* n (car lst)) result))))
  (iter n lst '()))

(define (partial fn arg)
  (lambda (n)
    (fn arg n)))

((partial product-of 9) '(1 2 3))

(product-of 9 '(1 2 3))
(map (partial product-of 9) '(1 2 3))
(filter is-palindrome (product-of 2 '(100 101 102)))

(define (get-palindromes i accum limit)
  (if (> i limit)
      accum
      (get-palindromes (+ i 1)
                       (cons (filter is-palindrome (product-of i (range 100 1000))) accum) limit)))

(get-palindromes 10 '() 1000)
(* 299 799)

(filter is-palindrome (product-of 999 (range 100 1000)))
(is-palindrome 992299)
