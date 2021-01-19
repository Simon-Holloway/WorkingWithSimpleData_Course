;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Design Quiz|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; image, image -> boolean
; Returns true if first image is larger than the second in height and width.
(check-expect (chec? (ellipse 61 35 "solid" "red") (ellipse 60 30 "solid" "red")) true)
(check-expect (chec? (ellipse 60 30 "solid" "red") (ellipse 60 30 "solid" "red")) false)
(check-expect (chec? (ellipse 60 30 "solid" "red") (ellipse 60 35 "solid" "red")) false)

;(define (chec? i j) false) -stub

;(define (chec? i j) - template
 ; ... i j)

(define (chec? i j)
  (and (> (image-height i) (image-height j)) (> (image-width i) (image-width j)) ))