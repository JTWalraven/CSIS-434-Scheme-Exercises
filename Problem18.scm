(define (delete item l)
  (if (null? l)
      '()
      (if(eq? item (car l))
         (delete item (cdr l))
         (cons (car l) (delete item (cdr l))))))

(define (permutation l)
  (if (eq? (length l) 1)
      (list l)
      (apply append
             (map
              (lambda (i)
                (map
                 (lambda (j)
                   (cons i j))
                 (permutation (delete i l))))
              l))))

(permutation '(1 2 3))

