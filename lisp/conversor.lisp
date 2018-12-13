;;;; Just a little converter of decimal numbers into binary, so cool the recursive solution.

(defun binary (n)
  (cond
    ((= n 0) (list 0))
    ((= n 1) (list 1))
    (t (nconc (binary (truncate n 2)) (list (mod n 2))))))

(defun converter ()
  (princ "Say the number in decimal form to be converted in binary: ")
  (let ((x (read-line)))
    (format t "The binary number is:~%~{~a~}" (binary (parse-integer x)))))


