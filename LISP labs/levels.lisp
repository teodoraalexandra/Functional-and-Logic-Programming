;Return the number of levels of a tree of type (1)
;(A 2 B 0 C 2 D 0 E 0)(1)

;lv-current level in the traversal
;n-integer helpinf going from a branch to another
;max- maximal level
;flag- a flag used to know when we traverse from a branch to another

; traversal (l:list, lv:integer n:integer, max:integer, flag:integer)=
      1.traversal(l2..ln lv n max flag) if l1 is not a number
      2.lv=lv+1 n=n-1+l1 traversal(l2..ln lv n max(lv max) flag if l1) != 0
      3.traversal(l2..ln 2 n max 1)  if l1=0 and n-1+l1=1 and flag = 0
      4.max if list is empty
      5.traversal(l2..ln lv n max flag) otherwise

;tests
;traversal ((A 2 B 0 C 2 D 0 E 0) 1 1 0 0) -> 3
;traversal ((a 2 b 2 c 0 d 2 e 0 f 0 g 2 h 0 i 0 ) 1 1 0 0) -> 4
;traversal ((a 2 b 2 c 0 d 2 e 0 f 1 x 0 g 2 h 0 i 0 ) 1 1 0 0) ->5

(defun traversal(l lv n max flag)
  (cond
    ((null l) max)
    ((not(numberp (car l))) (traversal (cdr l) lv n max flag))
    ((/= (car l) 0) (incf lv) (setq n (+ (car l) (- n 1))) (traversal (cdr l) lv n (max lv max) flag) )
    ((and (equal (car l) 0) (= (setq n (+ (car l) (- n 1))) 1) (equal flag 0)) (traversal (cdr l) 2 n max 1) )
    (t (setq n (+ (car l) n)) (traversal (cdr l) lv n max flag))
  )
)
; load("levels.lisp")
; (traversal '(a 2 b 2 c 0 d 2 e 0 f 0 g 2 h 0 i 0 ) 1 1 0 0)
; (traversal '(a 2 b 2 c 0 d 2 e 0 f 1 x 0 g 2 h 0 i 0 ) 1 1 0 0)
