%the aim of this program is to update an given element,
%at a given position,
%in a given list

%update(i,i,i,o)
%update(Elem Integer, Pos Integer, List List, Result List)

update(0,0,[],[]).
update(Elem, Pos, [_|T], [Elem|T]):-
        Pos =:= 1, !.
update(Elem, Pos, [H|T], [H|R]):-
        Pos1 is Pos-1,
        update(Elem, Pos1, T, R).
