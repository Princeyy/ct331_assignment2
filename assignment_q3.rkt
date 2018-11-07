#lang racket


(provide tree)
(define tree'( 5 (4 () (6)) (8 (3) (7))) )

;A
(provide sortTree)
(define (sortTree tree)
  (begin (cond [(not (null? (car tree))) (sortTree (car tree))])
         (printf "~a " (cadr tree));
         (cond [(not (empty? (caddr tree))) (sortTree (caddr tree))])
         )
  )
;B
(provide searchTree)
(define (searchTree item tree)
  (cond[(empty? tree) #f]
       [(equal? item (cadr tree)) #t]
       [(< item (cadr tree)) (searchTree item (car tree))]
       (searchTree item (caddr tree))
       )
  )
;C
(provide insert)
(define (insert item tree)
  (cond[(empty? tree) (append '() item '())]
       [(append item tree)])
  sortTree tree)
;D
(provide insertList)
(define (insertList list tree)
  (cond[(empty? tree) (append tree list)]
       [(append tree list)])
  sortTree tree) 
;E
;F

                           
  
