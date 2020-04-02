subm([],[]).
subm([_|L], L1):- subm(L,L1).
subm([A|L],[A|L1]):- subm(L,L1).
submultimi(L,Ld):- findall(X, subm(L,X), Ld).
