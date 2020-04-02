%the aim of this program is to remove the element,
%from position p given

%remove(i,i,o)
%remove(Pos Integer, List List, Result List)

remove(0,[],[]).
remove(Pos, [_|T], T):-
	Pos =:= 1,!.
remove(Pos, [H|T], [H|R]):-
	Pos1 is Pos-1,
	remove(Pos1, T, R).
