%length(list, integer)
%(i,o)

len([], 0).
len([_|T], L):-
	len(T, L1),
	L is L1+1.
