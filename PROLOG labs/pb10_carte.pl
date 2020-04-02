%Sa se scrie un program care sa calculeze suma primelor N numere
%Daca N > lungimea listei, suma elementelor listei

%sum([1,2,3],2,S) -> S = 3
%sum([1,3,2],4,S) -> S = 6

%sum(i,i,o)
%sum(lista, int, int)

sum(_,0,0):-!.
sum([],_,0).
sum([H|T], N, Sum):-
	N1 is N - 1, 
	sum(T, N1, NouaSuma),
	Sum is H + NouaSuma.

