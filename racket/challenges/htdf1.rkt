;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdf1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; htdf 1
;;  Problem: Design a function that pluralizes a given word.
;; (Pluralize means to convert the word to its plural form.)
;; For simplicity you may assume that just adding s is enough to pluralize a word.

;; String -> String
;; Produce a pluralized word or phrase


(check-expect (pluralize "tree") "trees")
(check-expect (pluralize "rabit") "rabits")

(define (pluralize word)
  (string-append word "s"))

(pluralize "test")
(pluralize "water")