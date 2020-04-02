%Sa se scrie un program care calculeaza suma primelor n numere naturale
%sum(i,o).
%sum(N Integer, Sum Integer)
%Adaugam N la suma si reapelam recursiv sum(n-1, nouaSuma)

sum(0,0):-!.
sum(N, Sum):-
	N1 is N - 1,
	sum(N1, NouaSuma),
	Sum is NouaSuma + N.
