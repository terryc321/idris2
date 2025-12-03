

(defpackage :matrix
  (:use :cl))
(in-package :matrix)

(defparameter a '((1 2)(3 4)(5 6)))
(defparameter b '((7 11)(8 12)(9 13)(10 14)))

(defun add-matrix (a b)
  (map 'list (lambda (r r2) (map 'list #'+ r r2)) a b))

(defun transpose-helper (a ms)
  (cond
    ((null ms) nil)
    (t (cons (mapcar #'car a) (transpose-helper (mapcar #'cdr a) (cdr ms))))))

(defun transpose-matrix (a)
  (transpose-helper a (car a)))

(defun rows (a) a)
(defun cols (a) (transpose-matrix a))


(defun duplicate (a n)
  (assert (>= n 0))
  (cond
    ((< n 1) nil)
    (t (cons a (duplicate a (- n 1))))))

#|
 multiplication
 row 1 by col 1
 row 2 by col 1
 row 3 by col 1

(1 2)  x (7  8   9)  ->  ( 1x7 + 2x10   1x8+2x11    1x9+2x12 )
(3 4)    (10 11 12)      (  )
(5 6)                    (  )

build up in row major ? left to right ,top to bottom 

cols a x rows b 

|#
(defun mult-matrix (a b)
  (mapcar (lambda (cb) (mapcar (lambda (ra)
				 ;; (format t "~a x ~a => ~a ~%" cb ra (list 'cb=> cb 'ra=> ra))
				 (apply #'+ (mapcar #'* cb ra)))
			       (cols b)))
	  (rows a)))

(defun demo ()
  (mult-matrix a (transpose-matrix b)))

 
