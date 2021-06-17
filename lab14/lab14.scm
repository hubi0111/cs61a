(define (split-at lst n)
  (cond ((= n 0) (cons nil lst))
        ((null? lst) (cons lst nil))
        (else (let ((temp (split-at (cdr lst) (- n 1))))
            (cons (cons (car lst) (car temp)) (cdr temp)))))
)


(define (compose-all funcs)
  (lambda (x)
    (if (null? funcs)
        x
        ((compose-all (cdr funcs)) ((car funcs) x)))
  )
)