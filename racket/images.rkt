#lang racket
(require 2htdp/image)

(circle 15 "solid" "red")
(rectangle 30 60 "outline" "blue")
(text "hello my man" 24 "orange")
(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))