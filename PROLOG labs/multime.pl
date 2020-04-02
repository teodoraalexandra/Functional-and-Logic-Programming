%Sa se scrie un predicat care verifica daca o lista este multime
%multime([1,2,3]) -> yes
%multime([1,2,1]) -> no

member(E, [E|_]).
member(E, [_|T]):- member(E,T).

multime([]).
multime([H|T]):-
	not(member(H, T)),
	multime(T).
