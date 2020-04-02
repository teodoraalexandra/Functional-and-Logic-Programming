%comb(i,i,o)
%comb(L- List, N- Integer, R- List)

comb([H|_], 1, [H]).
comb([_|T], N, R):- 
	comb(T, N, R).
comb([H|T], N, [H|R]):-
	N > 0,
	N1 is N - 1,
	comb(T, N1, R).

combinari(L, N, R):- findall(X, comb(L, N, X), R).
 
