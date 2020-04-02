%PROBLEM 7-A 

%findmax(List List, Int Max)
%flow: (i,o)

findmax([], -32000):-!.
findmax([H|T], MAX):-
	findmax(T, MAX),
	MAX>H,!.
findmax([MAX|_], MAX):-!.

%detpos(Int Nr, Int Pos, List List, List Result)
%flow: (i,i,i,o)

detpos(_,_,[],[]).
detpos(Nr, Pos, [H|T], L):-
	Nr =\= H,
	Pos1 is Pos+1,
	detpos(Nr, Pos1, T, L).
detpos(Nr, Pos, [H|T], [Pos|L]):-
	Nr =:= H,
	Pos1 is Pos+1, 
	detpos(Nr, Pos1, T, L).   

%maxpos(List List, List Result)
%flow: (i, o)

maxpos(L, R) :- findmax(L, MAX), 
	detpos(MAX, 1, L, R).

%PROBLEM 7-B
%procesare(L- list, R- result, P-sublist)
%L – lista initiala, o lista eterogena
%R – rezultat
%model de flux (i, o)

procesare([], []).
procesare([H|T], [HRez|R]):-
	is_list(H),
	maxpos(H, HRez),!,
	procesare(T, R).
procesare([H|T], [H|R]):- 
	procesare(T, R).
	

