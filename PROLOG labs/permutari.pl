%perm(lista, lista)
%inserez(elem, lista, lista)

inserez(E,L,[E|L]).
inserez(E,[A|L],[A|X]):-
	inserez(E,L,X).

perm([],[]).
perm([E|L],X):-
	perm(L,L1),
	inserez(E,L1,X).
