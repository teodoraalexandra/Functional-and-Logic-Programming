;Write a function to return the n-th element of a list, 
;or NIL if such an element does not exist.
;(l LIST, n INTEGER) 
;In the list l we have to check and return the n-th element

(defun getElement (l n)
  (cond
   ((> n (length l)) nil)
   ((null l) nil)
   ((equal n 1) (car l))
   (t (getElement (cdr l) (- n 1)))
   )
)

;(getElement '(1 2 3 4 5)'5)
;(getElement '(1 2 3 4 5)'7)
;(getElement '()'5)

;Write a function to check whether an atom E is a member of a list 
;which is not necessarily linear.
;(l LIST, e INTEGER)
;In the list l we have to check if element e exists.

(defun checkMember (l e)
    (cond
        ((null l) nil)
        ( (listp (car l)) 
             (cons (checkMember (car l) e) (checkMember (cdr l) e)) 
        ) 
        ( (checkMember (cdr l) e) )
        ( (equal (car l) e) t)
    ) 
)

;(checkMember '(1 2 4 (a 6) 5)'a) - (T) 
;(checkMember '(a 2 4 (3 6) 5)'a) - (T)
;(checkMember '() a) - NIL
;(checkMember '(1 2 4 (7 6) 5)'a) - NIL

;Write a function to determine the list of all sublists of a given list, 
;on any level.
;(l LIST)
;We have to return all the sublist from list l

(defun sublist(l)
  (cond
   ((null l) nil )
   ( (numberp (car l)) (sublist (cdr l)) )
   ( (listp (car l))
           (append
            (list (car l))
           (sublist (car l))  
           (sublist (cdr l))  
           )
   ) 
   )
)

;(sublist '(1 2 (3 (4 5) (6 7)) 8 (9 10)))
;(sublist '())


;Write a function to transform a linear list into a set.
;(e INTEGER, l LIST)
;Here we count how many times element e appears in the list
(defun count-of (e list)
  ((lambda (f) (funcall f f list 0))
   (lambda (c tail count-so-far)
     (if (null tail) count-so-far
       (funcall c c (rest tail)
                (+ count-so-far (if (eql e (first tail)) 1 0))
        )
     )
    )
  )
)

;(l LIST)
;We create a set, given the list l
(defun createSet(l)
 (cond
   ((null l) nil)
   (( equal 1 (count-of (car l) l )  ) (cons (car l) (createSet(cdr l)))) 
   (t (createSet(cdr l)))
   )
)

;(createSet '(1 1 3 2 2 4 5 6 7 7));
;(createSet '())

