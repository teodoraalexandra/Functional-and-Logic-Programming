;6. Write a function that returns the maximum of numeric atoms in a list, 
;at any level.
;(l LIST)
;We return max element from l.

(defun maxim(l)
  (cond
     ((null l) nil)
     ((numberp l) l)
     ((atom l) -666)
     (t (apply 'max (mapcar 'maxim l)))
  )
)

;(maxim '(1 2 3 4 10 5))
;(maxim '(1 2 3 4 10 (12 15 13) 5))
;(maxim '(a b c d '(e f g)))
;(maxim '(a b c d))
;(maxim '())