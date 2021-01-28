;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname student-card) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct student (name id))
;;student is (make-student String Natural)
;; interp. a student with name and id

(define S1 (make-student "Ava" 231))
(define S2 (make-student "jake" 201))

#;
(define (fn-for-student s)
  (... (student-name s)
       (student-id s)))

;;ListOfStudent is one of:
;;-empty
;;-(cons Student ListOfStudent)
;;interp. a list of students
(define LOS1 empty)
(define LOS2 (cons S1 empty))
(define LOS3 (cons S1 (cons S2 empty)))
(define LOS4 (cons (make-student "John" 7893) (cons (make-student "Eva" 3124) empty)))
#;
(define (fn-for-los los)
  (cond [(empty? los) (...)]
        [else
         (...(fn-for-student (first los))
             (fn-for-los (rest los)))]))


;ListOfStudent -> ListOfCards
;takes a list of students and returns a list of cards with the students name and id
(check-expect (cards LOS1) empty)
(check-expect (cards LOS2) (cons  "Ava 231" empty))
(check-expect (cards LOS4) (cons "John 7893" (cons "Eva 3124" empty)))

;(define (cards los) empty) -stub
;template form los data definition
(define (cards los)
  (cond [(empty? los) empty]
        [else
         (cons (mcard (first los))
               (cards (rest los)))]))


;student -> string
;takes a student and returns a string
(check-expect (mcard S1) "Ava 231")

;(define (mcard s) "") -stub
;template taken from student
(define (mcard s)
  (string-append (student-name s) " " (number->string (student-id s))))

