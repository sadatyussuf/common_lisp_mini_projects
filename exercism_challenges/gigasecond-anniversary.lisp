(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second)
  (let* (
         (gigasecond 1000000000)
         (en-time (encode-universal-time second minute hour day month year))
         )
        (  
         multiple-value-bind (sec min h d m y)
         (decode-universal-time (+ en-time gigasecond))
         (multiple-value-list (values y m d h min sec))
         )
      )
  )