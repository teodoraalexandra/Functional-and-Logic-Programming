(defun myreplace(l)
  (cond
   ((null l) nil)
   ( (and (numberp (car l))(evenp (car l))) (cons (+ 1 (car l)) 
                                                  (myreplace (cdr l)) ))
   ( (and (numberp (car l))(oddp (car l))) 
          (cons (car l) (myreplace (cdr l) ) ))
   ( (atom (car l)) 
          (cons (car l) (myreplace (cdr l) ) ))
   ( (listp (car l)) (cons (myreplace (car l) ) (myreplace (cdr l) ) ))  
  )
)

(defun ultim(l)
  (cond
   ((null l) nil)
   ( (and (null (cdr l)) ( not(numberp(car l)) ) ) t)
   (t (ultim (cdr l)))
   )
)

(defun term(l)
  (cond
   ((atom l) 0)
   ((ultim l) (+ 1 (apply '+ (mapcar 'term l))))
   ( t (apply '+ (mapcar 'term l)))
   )
)