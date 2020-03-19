#lang racket
(require 2htdp/image)
(define WIDTH 100)
(define HEIGHT 100)

(= 1 2)
(= 1 1)
(> 3 9)

(string=? "foo" "bar")

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))
(if (< (image-width I1)
       (image-width I2))
     "tall"
     "wide"
     )

(if true
    "niceee"
    "baad")

(and (> (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))