%Programul verifica daca un element exista intr-o lista
%member(E integer, List List)
%(i,i)

member(E,[E|_]):-!.
member(E,[_|T]):-member(E,T).
