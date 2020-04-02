%Sa se scrie un predicat care produce un rezultat cu lista initiala 
%cu elementele din N in N eliminate.

%eliminare(List List, N Integer, R List)
%(i,i,o)

%modif(List List, Pos Integer, N Integer, R List)
%(i,i,i,o)

eliminare([], 0, []).
eliminare(L, N, R):- modif(L, N, N, R).

modif([],_,_,[]).
modif([H|T], Pos, N, [H|R]):-
	Pos =\= 1, 
	Pos1 is Pos - 1,
	modif(T, Pos1, N, R).
modif([_|T], Pos, N, R):-
	Pos =:= 1,
	modif(T, N, N, R).





