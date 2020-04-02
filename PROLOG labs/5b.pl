%Write a predicate to determine the set of all 
%the pairs of elements in a list.
%perm(List List, Result List)
%(i,o)

imperechere(_,[],[]):-!.
imperechere(E,[H|T],R):-imperechere(E,T,R1), R = [[E,H]|R1].

concatenare([],L,L).
concatenare([H|L1],L2,[H|L3]):-
	concatenare(L1,L2,L3).

perechi([],[]):-!.
perechi([H|T],R):- imperechere(H,T,R1),perechi(T,R2),concatenare(R1,R2,R).
