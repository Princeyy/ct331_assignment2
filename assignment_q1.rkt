#lang racket

; A cons pair of two numbers.
(display "A cons pair of two numbers: ")
(cons 1 2)

; A list of 3 numbers, using only the cons function.
(display "A list of 3 numbers, using only the cons function: ")
(cons 1(cons 2 3))

; A list containing a string, a number and a nested list of three numbers, using only the CONS function.
(display "A list containing a string, a number and a nested list of three numbers, using only the CONS function: ")
(cons "String"(cons 1 (cons 2(cons 3 4))))

; A list containing a string, a number and a nested list of three numbers, using only the LIST function
(display "A list containing a string, a number and a nested list of three numbers, using only the LIST function: ")
(list "String" 1 (list 2 3 4))

; A list containing a string, a number and a nested list of three numbers, using only the APPEND function. 
(display "A list containing a string, a number and a nested list of three numbers, using only the APPEND function: ")
(append '("String") '(1) '((2 3 4)))