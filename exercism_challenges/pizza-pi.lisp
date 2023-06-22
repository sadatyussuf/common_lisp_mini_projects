(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
   (let* (
          (crust-g-per-cm 45)
         (middle-g 200)
          (crust 20)
         (crust-g (+ (/ (* crust-g-per-cm (* pi diameter)) crust) middle-g))
          )
         (round (* pizzas crust-g))
    )
)

(defun size-from-sauce (sauce)
  (sqrt(/ (* 40 sauce) (* 3 pi)))
)

(defun pizzas-per-cube (cube-size diameter)

  (floor (/ (* 2 (expt cube-size 3)) (* 3 pi (expt diameter 2)) ) )

  )


(defun fair-share-p (pizzas friends)
  (= (mod (* pizzas 8)  friends) 0)
 
  )
