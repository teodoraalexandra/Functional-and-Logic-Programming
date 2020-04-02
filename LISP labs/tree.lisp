;For a given tree of type (1) return the path from the root node to a certain given node X.

;distanta(ar LIST, stack LIST, dist LIST, el INTERGER)
;ar - arborele in reprezentarea 1
;stack - un stack ce contine distantele pana la intalnirea unui nou nod cu 2 fii
;dist- calea pana la nodul el
;nod- nodul ce trebuie cautat


(defun distanta(ar stack dist nod)
(cond

((null ar) nil)
((eq (car ar) nod) dist)
((= (car (cdr ar)) 2)(distanta (cdr (cdr ar)) (list (cons  (car ar) dist) stack) (cons (car ar) dist) nod))
((= (car (cdr ar)) 1)(distanta (cdr (cdr ar)) stack (cons (car ar) dist ) nod))
((= (car (cdr ar)) 0)(distanta (cdr (cdr ar)) (cdr stack) (car stack) nod))

)
)

;(distanta '(A 2 B 0 C 2 D 0 E 2 H 1 I 2 J 0 K 0 F 0) '() '() 'J) 
;(distanta '(A 2 B 0 C 2 D 0 E 0) '() '() 'D)
;(distanta '() '() '() 'A)
