#lang racket

;A
(provide ins_beg)
(define (ins_beg el list)
  (display "Hello, I'm ins_beg!\n")
  (cons el list))
;B
(provide ins_end)
(define (ins_end el list)
  (display "Hello, I'm ins_end\n")
  (cons list el))
;C
(provide count_top_level)
(define (count_top_level list)
  (if (null? list) 0
      (+ 1 (count_top_level (cdr list)))
  )
)
;D
(provide count_instances)
(define (count_instances item list)
  (cond [(null? list) 0]
        [equal? item (car list) (+ 1 (count_instances item (cdr list)))]
        (count_instances item (cdr list))
        )
  )
;E
(define (count_instances_tr item list)
  (helper_count_instances_tr item list 0))

(define (helper_count_instances_tr item lst count)
  (cond [(null? list) count]
        [(equal? item (car list)) (helper_count_instances_tr item (cdr lst) (+ 1 count))]
        (helper_count_instances_tr item (cdr lst) count)
        )
  )
;F
(define (count_instances_deep item list)
  (cond [(null? list) 0]
        [(list? (car list))
         (+ (count_instances_deep item (car list)) (count_instances_deep item (cdr list)))]
        [(equal? item (car list)) (+ 1 (count_instances_deep item (cdr list)))]
        (count_instances_deep item (cdr list))
        )
  )
                          
                          