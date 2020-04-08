;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname image-larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; Image, Image -> Boolean
; Return true if the first image is larger than the second one.
(define im1 (rectangle 10 10 "solid" "blue"))
(define im2 (rectangle 20 10 "solid" "yellow"))
(define im3 (rectangle 30 10 "solid" "red"))
(check-expect (image-larger? im1 im2) false)
(check-expect (image-larger? im3 im2) true)
(check-expect (image-larger? im3 im3) false)


(define (image-larger? I1 I2)
  (> (image-width I1)
     (image-width I2)))
