#lang racket
(require 2htdp/image)
(define (bulb c)
  (circle 40 "solid" c))
(bulb "red")