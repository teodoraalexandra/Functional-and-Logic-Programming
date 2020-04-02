%Programul va afisa suma numerelor naturale pare din intervalul a, b
%sum(i,i,o).
%sum(A integer, B integer, Sum integer).

sum(A,B,0):-A>B,!.
sum(A,B,Sum):-
	A mod 2 = 0,
	A1 is A + 1,
	sum(A1, B, NouaSuma),
	Sum is NouaSuma + A.
sum(A,B,Sum):-
	A1 is A + 1,
	sum(A1, B, Sum).
