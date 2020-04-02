f([],0).

f([H|T], S) :-
	f(T, S1),
	S is S1-H.

reverse([],CV,CV).
reverse([H|T], CV, R):-	
	reverse(T, [H|CV], R).

reverseh([],CV,CV).
reverseh([H|T], CV, R):-
	is_list(H),
	reverse(H, [], Sol),
	reverseh(T, [Sol|CV], R).
reverseh([H|T], CV, R):-
	number(H),
	reverseh(T, [H|CV], R).
