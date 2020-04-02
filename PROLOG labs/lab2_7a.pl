%intersection(List List1, List List2, List Result)
%(i,i,o)

intersection([], _, []).
intersection([H|T],T1,[H|L]) :- appears(H,T1), intersection(T,T1,L).
intersection([H|T],T1,L) :- \+ appears(H,T1), intersection(T,T1,L).

%appears(Integer E, List List)
%(i,i)
appears(E, [E|_]).
appears(E, [_|T]) :- appears(E,T). 
