%Concatenarea a 2 liste in a 3-a
%exemplu: [1,2,3],[4,5,6]->[1,2,3,4,5,6]
%concat(List L1, List L2, List Result)
%(i,i,o)

concat([],L,L).
concat([H1|T1],L2,[H1|T3]):-
	concat(T1,L2,T3).
	
	
