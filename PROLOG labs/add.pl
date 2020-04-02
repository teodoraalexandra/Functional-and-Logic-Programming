%the aim of this program is to add an given element,
%at a given position,
%in a given list

%add(i,i,i,o)
%add(Elem Integer, Pos Integer, List List, Result List)

add(0,0,[],[]).
add(Elem, Pos, [H|T], [Elem, H|T]):-
	Pos =:= 0, !.
add(Elem, Pos, [H|T], [H|R]):-
	Pos1 is Pos-1,
	add(Elem, Pos1, T, R ).
