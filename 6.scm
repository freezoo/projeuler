(load "projeuler/util.scm")
(- (square (reduce + 0 (range 1 101)))
   (reduce + 0 (map square (range 1 101))))

