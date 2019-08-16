(defparameter foo nil)

(setf foo (make-array 4))

(setf (aref foo 2) '(a b c))

(setf (car (aref foo 2)) (make-hash-table))

(setf (gethash 'zoink (car (aref foo 2))) 5)
(print foo)

(defstruct person
  name
  age
  waist-size
  favorite-color)

(defparameter *bob* (make-person :name "Bob"
                                 :age 35
                                 :waist-size 32
                                 :favorite-color "blue"))

(person-age *bob*)

(defparameter *that-guy* (print *bob*))
(setf (person-name *that-guy*) "Ron")
(print *bob*)
