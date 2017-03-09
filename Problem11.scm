(define (reverseList list)
  (if (null? list)
      '()
      (append
        (reverseList (cdr list))
        (cons
         (car list)
         '()
         ))))