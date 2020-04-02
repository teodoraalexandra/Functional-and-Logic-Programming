%Urmatorul program ia o lista de intregi si aduna 1 la fiecare element al ei
%increment(List List, Result List).
%(i,o).

increment([],[]).
increment([H|T], [H1|R]):-
	increment(T, R),
	H1 is H+1.
