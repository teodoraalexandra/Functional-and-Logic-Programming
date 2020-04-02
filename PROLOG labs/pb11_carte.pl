%Sa se scrie un predicat care va produce lista initiala 
%cu elementele din N in N scrise de 2 ori.

%modif(L List, Pos Integer, N Integer, Result List)
%(i,i,i,o)
%dublare(L List, Pos Integer, Result List)

dublare([], 0, []).
dublare(L, N, R):- modif(L, N, N, R).

modif([],_,_,[]).
modif([H|T], Pos, N, [H|R]):-
	Pos =\= 1,
	Pos1 is Pos - 1,
	modif(T, Pos1, N, R).
modif([H|T], Pos, N, [H,H|R]):-
	Pos =:= 1,
	modif(T, N, N, R).
