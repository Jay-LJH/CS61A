(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s) (if (null? (cdr s)) #t (if (> (car s) (cadr s)) #f (ordered? (cdr s)))))

(define (square x) (* x x))

(define (pow base exp) (cond
                        ((= exp 1) base)
                         ((even? exp) (square (pow base (/ exp 2))))
                         ((odd? exp) (* base (square (pow base (/ (- exp 1) 2)))))))
