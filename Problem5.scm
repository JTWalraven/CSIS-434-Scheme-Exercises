(define (numZeros list)
  (if (null? list)
      0
      (if (zero? (car list))
          (+ (numZeros (cdr list)) 1)
          (numZeros (cdr list)))))
