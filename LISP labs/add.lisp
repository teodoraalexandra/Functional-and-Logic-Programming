(defun minimum (l) 
(cond
	((null l) 100)
	((and (numberp (car l)) (oddp (car l))) (min (car l) (minimum (cdr l)))) 
	((listp (car l)) (min (minimum (car l)) (minimum (cdr l))))
	(t (minimum(cdr l)))
)
)
