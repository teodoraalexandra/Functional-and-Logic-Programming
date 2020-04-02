%comb(L:list, K:integer, R:result-list)
%comb(i,i,o)
comb([H|_],1,[H]).
comb([_|T], K, R):- comb(T,K,R).
comb([H|T], K, [H|R]):-
	K > 1,
	K1 is K - 1,
	comb(T, K1, R).

%combination(L: list, K:interger, R:result)
combination(L, K, R):- findall(X, comb(L, K, X), R).
