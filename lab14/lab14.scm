(define (get lst n) (if (and (> n 0) (not (null? lst))) (cons (car lst) (get (cdr lst) (- n 1))) nil))
(define (waste lst n) (if (and (> n 0) (not (null? lst))) (waste (cdr lst) (- n 1)) lst))
(define (split-at lst n) (cons (get lst n) (waste lst n)))

(define (compose-all funcs) (lambda (x) (if (null? funcs) x ((compose-all (cdr funcs)) ((car funcs) x)))))
