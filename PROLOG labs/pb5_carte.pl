%Urmatorul program copiaza o lista dubland fiecare element
%dublu(List List, Result List).
%(i,o)

dublu([],[]).
dublu([H|T],[H1|R]):-
	dublu(T, R),
	H1 is H*2.
