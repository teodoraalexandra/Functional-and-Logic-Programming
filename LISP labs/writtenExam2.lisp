;nr-lui de subliste de la 
 ;  orice nivel pt care nr-ul atomilor numerici de la orice nivel este impar
(defun imp(l)
(cond
	((null l)0)
	((numberp (car l)) (+ 1 (imp (cdr l))))
	((atom (car l)) (+ 0 (imp (cdr l))))
	(t(+ (imp (car l)) (imp (cdr l))))
))

(defun ni(l)
(cond
	((= 1 (mod (imp l) 2)) t)
	(t nil)
)

)
(defun nri(l)
(cond
	((atom l)0)
	((ni l)(+ 1 (apply '+ (mapcar 'nri l))))
	(t(apply '+ (mapcar 'nri l)))
)
)

; nr sub care se termina cu un numar par
(defun ultim(l)
(cond
	((null l)nil)
	((and( null (cdr l))  (numberp (car l)) (= 0 (mod (car l) 2)))  t)
	(t (ultim (cdr l)))
)
)

(defun term(l)
(cond
	((atom l)0)
	((ultim l) (+ 1 (apply '+ (mapcar 'term l))))
	(t (apply '+ (mapcar 'term l)))
)
)

; R5.  5.Numarul de subliste pt care atomul numeric maxim este par -> 
; -> pe nivele impare
(defun numar(l)
	(cond
		( (= 0 ( mod (maxim l) 2)) t) 
		(t nil)
	)
)

(defun maxim(l)
  (cond
     ((null l) nil)
     ( (numberp l)  l)
     ((atom l) -666)
     (t (apply 'max (mapcar 'maxim l)))
  )
)


(defun nr(l level)
	(cond
         ((atom l) 0)
         ((and (numar l) (equal (mod level 2) 1)) 
               (+ 1 (apply '+ (mapcar #'(lambda (a) (nr a (+ level 1))) l))))
        (t (apply '+ (mapcar #'(lambda (a) (nr a (+ level 1))) l)))
	)
)
