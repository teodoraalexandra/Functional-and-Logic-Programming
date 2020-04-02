%Write a predicate to transform a list in a set, 
%considering the first occurrence.
%Eg: [1,2,3,1,2] is transform in [1,2,3].

%nrOcc(E Integer, L List, R Integer)
%(i,i,o)

nrOcc(_,[],0).
nrOcc(E, [H|T], R):-
	E =:= H, 
	nrOcc(E, T, R1),
	R is R1 + 1.
nrOcc(E, [H|T], R):-
	E =\= H,
	nrOcc(E,T,R).

%member(Elem Integer, List L)
%(i,i)

apare(E, [E|_]):-!.
apare(E, [_|T]):-apare(E,T).

%transform(List List, Result List)
%(i,o)
transform(_,[]).
transform([H|T], [H|R]):-
	transform(T,R),
	not(apare(H,R)).
transform([H|T], R):-
	transform(T,R),
	apare(H,R).

sterge(_,[],[]).
sterge(E,[E|T],T1):-sterge(E,T,T1),!.
sterge(E,[H|T],[H|T1]):-sterge(E,T,T1).

multime([],[]):-!.
multime([H|T],[H|L]):-sterge(H,T,T1),multime(T1,L).
