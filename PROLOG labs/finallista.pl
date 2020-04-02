%Sa se scrie un predicat care sa adauge un element la sfarsitul unei liste
%add(E Integer, List List, Result List)

add(E,[],[E]).
add(E, [H|T], [H|R]):-
	add(E, T, R).
