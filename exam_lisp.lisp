;;. Se da o lista neliniara formata din numere si atomi. 
;Nivelul superficial al listei este considerat nivel 0. 
;Determinati lista valorilor numerice maxime unice 
;de pe fiecare nivel impar din lista initiala, in ordine inversa.

;L= (0 a 8 -2 3 (1 b c -1 -8 -9 (2 4 5 -2 -10 d -7 e (3 3 d -1)))) 
;=> R = (3 1)

(defun maxim(l)
  (cond
  ((null l) nil)
  ((numberp l) l)
  ((atom l) -666)
  (t (apply 'max (mapcar 'maxim l)))
  )
)

(defun sublist(l)
  (cond
   ((null l) nil )
   ( (numberp (car l)) (sublist (cdr l))) 
   ( (listp (car l))
            (append
            (list (car l))
            (sublist (car l)) 
            (sublist (cdr l))  
           )
   ) 
   )
)

(defun final(l)
  (cond
   ((null l) nil)
   ( (listp (car(sublist l)))  
     (append
      (list (maxim ( car (sublist l))))
      (final (cdr (sublist l)))
     )
    )
   )
)



