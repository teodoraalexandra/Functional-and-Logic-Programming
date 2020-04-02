%Urmatorul program copiaza dintr-o lista in alta lista doar elementele pozitive
%pozitiv(List List, Result List)
%(i,o)

pozitiv([],[]).
pozitiv([H|T],R):-
	H < 0,
	pozitiv(T, R).
pozitiv([H|T],[H|R]):-
	H >= 0,
	pozitiv(T,R).
