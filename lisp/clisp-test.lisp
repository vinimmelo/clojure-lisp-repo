
;; Simple let binding to outer scope.
(let* ((x 10)
       (y (+ 10 x)))
  (list x y)) 

(sleep 10) ;; Sleep 10 seconds

(defvar *x* 10) ;The way of defining a variable

(defun numbers-print ()
  (format t "X before assignment: ~d~%" *x*)
  (let* ((*x* (+ 3 *x*)))
    (format t "X after assignment: ~d~%" *x*) ))

(defun pprinted (x)
  (format t "The number is: ~d~%" x) x)


(defun factorial (x)
  "Factorial function!"
  (if (= x 1) 1
      (* x (factorial (1- x)))))

(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

(defun next-prime (number)
  (loop for n from number when (primep n) return n))

(defmacro do-primes (var-and-range &rest body)
  (let ((var (first var-and-range))
        (start (second var-and-range))
        (end (third var-and-range)))
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var))))
         ((> ,var ,end))
       ,@body)))
