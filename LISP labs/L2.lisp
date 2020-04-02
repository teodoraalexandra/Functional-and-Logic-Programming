;6. Carte. Sa se defineasca o functie care returneaza numarul de noduri din arbore
(defun nr(l)
  (cond
   ((null(cdr l)) 1)
   (t (+ (apply '+ (mapcar 'nr(cdr l))) 1 ))
  )
)

;(write(nr '(1 (2) (3 (5) (6)) (4)) )) 

;7. Carte. Sa se defineasca o functie care returneaza adancimea arborelui (lvl max)
(defun ad(l)
  (cond
   ((null(cdr l)) 0 )
   ((+ 1 (apply 'max ( mapcar 'ad (cdr l))  )))
  )
)

;(write(ad '(1 (2) (3 (5) (6)) (4)) ))

; MAX DEPTH of a tree
(defun max-depth (tree)
  (if (null (rest tree))
      (values 0 tree)
      (multiple-value-bind (left-depth left-path) (max-depth (second tree))
        (multiple-value-bind (right-depth right-path) (max-depth (third tree))
          (if (> right-depth left-depth)
              (values (1+ right-depth) (cons (first tree) right-path))
              (values (1+ left-depth) (cons (first tree) left-path)))
          )
      )
   )
)

;(write(max-depth '(A (B) (C (D) (E)))))

;13. For a given tree of type (2) return the path 
;from the root node to a certain given node X.
(defun path (tree leaf)
  (cond ((null tree) nil)
        ((eq (car tree) leaf) (list leaf))
        (t (mapcan (lambda (subtree)
                     (let ((p (path subtree leaf))) 
                       (when p (cons (car tree) p))
                     )
                   )
                   (cdr tree)
            )
        )
   )
)

;(write(path '(A (B) (C (D) (E))) 'B))
;(write(path '(A (B) (C (D) (E))) 'C))
(write(path '(A (B) (C (D) (E))) 'D))
;(write(path '(A (B) (C (D) (E))) 'E))
;(write(path '(A (B) (C (D) (E))) 'F))