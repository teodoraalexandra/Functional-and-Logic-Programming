%create a list from given interval
%create(m-integer, n-integer, result-list)
%(i,i,o)

create(M, N, []):- M>N,!.
create(M, N, [M|R]):-
	M =< N,
	M1 is M+1, 
	create(M1, N, R).   
	
