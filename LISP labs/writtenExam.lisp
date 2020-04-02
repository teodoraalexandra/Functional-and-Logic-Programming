(defun inloc(l e lvl k)
  (cond
   ((null l) nil)
   ((and (numberp (car l)) (not(equal lvl k)) ) (cons (car l)(inloc (cdr l) e lvl k ) ) )
   ((and (numberp (car l)) (equal lvl k) ) (cons e (inloc (cdr l) e lvl k ) ) )
   ((listp (car l))  (cons (inloc (car l) e (+ 1 lvl) k) (inloc (cdr l) e lvl k) ) )
   )
)

;(defun f(l)
 ; (cond
  ; ((atom l) -1)
   ;((> (f (car l)) 0) (+ (cons (car l)(f (cdr l)))))
  ; (t (f (cdr l)))
  ; )
;)

(defun dublare(l n copy)
  (cond
   ((null l) nil)
   ((equal n copy) (append (list (car l) (car l)) (dublare (cdr l) 1 copy) ) )
   ( (not(equal n copy)) (cons (car l) (dublare (cdr l) (+ 1 n) copy) ) )
  )
)

(defun countNum(l)
  (cond
   ((null l) 0)
   ((numberp l) 1)
   ((atom l) 0)
   ( t (apply '+ (mapcar 'countNum l)))
   )
)

(defun verif(l)
  (cond
   ((null l) nil)
   ( ( not ( equal (mod (countNum l) 2) 0 )) t)
   (t nil)
   )
)

(defun prelucrare(l)
  (cond 
   ((atom l) 0)
   ( ( verif l) (+ 1 ( apply '+ (mapcar 'prelucrare l)))) 
   (t (apply '+ (mapcar 'prelucrare l)))
)
)

(defun inc(x)
  (+ 1 x)
)

(defvar A 1)

(defun G(L)
    (+ (car L) (cadr L))
)

;(SET 'H 'F)
;(SET 'H 'G)

(defun f(l)
  (cond
   ((null l) nil)
   ((listp (car l))
        ((lambda(ff) 
           (append ff (f (cdr l)) (car ff))
           )
         (f (car l)))
        )
   (t (list (car l)))
   )
)