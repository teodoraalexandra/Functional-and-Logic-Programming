%Program care calculeaza inversarea unei liste
%(i,o)
%(list,list)

add(E,[],[E]).
add(E, [H|T], [H,R]):- add(E,T,R).

invers([],[]).
invers([H|T],I):-
	invers(T, Y),
	add(H, Y, I).
