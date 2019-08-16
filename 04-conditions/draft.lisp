(if '()
    'i-am-true
    'i-am-false)
;; I-AM-FALSE

(if '(1)
    'i-am-true
    'i-am-false)
;; I-AM-TRUE

(defun my-length (list)
  (if list
      (1+ (length (cdr list)))
      0))

(if (oddp 5)
    'i-am-evaluated
    (/ 1 0))

(find-if #'oddp '(2 4 6 8))
(find-if #'oddp '(2 4 5 8))
