(error "foo")

(define-condition foo () ()
  (:report (lambda (condition stream)
             (princ "Stop FOOing around, numbskull!" stream))))

(define-condition bar () ()
  (:report (lambda (condition stream)
             (princ "Stop BARing around, numbskull!" stream))))


(error 'foo)
(error 'bar)

(defun bad-function ()
  (error 'foo))

(handler-case (bad-function)
  (foo () "somebody signaled foo!")
  (bar () "somebody signaled bar!"))
