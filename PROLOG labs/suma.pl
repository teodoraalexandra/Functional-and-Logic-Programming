%sum of elements from list L
%sum (L-list, S-result, integer)

suma([], 0).
suma([H|T], S):-suma(T,ST),
	S is H+ST.
