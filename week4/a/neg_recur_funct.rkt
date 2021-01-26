;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname neg_recur_funct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; searches a list for a negitive number

;; ListOfNumber is one of:
;; -empty
;; (cons Number ListOfNumber)
;; interp. a list of numbers
(define LON1 empty)
(define LON2 (cons 1 empty))
(define LON3 (cons -2 (cons 1 empty)))
(define LON4 (cons 3 (cons 2 (cons -3 empty))))

#;
(define (fn-for-lon lon)
  (cond [(empty? lon) (...)]
        [else
          (... (first lon)
               (fn-for-long (rest lon)))]))

;; Template Rules Used:
;; - one of: 2 cases
;; - atomic distinct: empty
;; - compound: (cons Number ListOfNumber)


;; LON -> Boolean
;; Takes a list of numbers and gives true is there is a negitive in the list
(define (listN lon)
  (cond [(empty? lon) false]
        [else
          (if (< (first lon) 0)
              true
              (listN (rest lon)))]))