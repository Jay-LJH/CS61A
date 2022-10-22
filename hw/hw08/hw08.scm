(define (my-filter func lst)
        (cond
          ((null? lst) nil)
          ((null? (cdr lst)) (if (func (car lst)) (list (car lst)) nil))
          ((if (func (car lst)) (cons (car lst) (my-filter func (cdr lst))) (my-filter func (cdr lst))))
          )
          )

(define (interleave s1 s2)
  (cond
    ((and (not (null? s1)) (not (null? s2))) (cons (car s1) (cons (car s2) (interleave (cdr s1) (cdr s2)))))
    ((and (null? s1) (null? s2)) nil)
    ((null? s1) (cons (car s2) (interleave nil (cdr s2))))
    ((null? s2) (cons (car s1) (interleave nil (cdr s1))))
    )

  )

(define (accumulate merger start n term)
  (if (> n 0)
    (merger (term n) (accumulate merger start (- n 1) term))
    start
    )
  )

(define (no-repeats lst)
  (if (null? lst) nil (cons (car lst) (my-filter (lambda(x)(not (= x (car lst)))) (no-repeats(cdr lst)))))
  )
