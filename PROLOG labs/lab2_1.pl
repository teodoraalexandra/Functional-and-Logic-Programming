suma_cifre(0, 0).
suma_cifre(N, R):-
	N > 0,
	Cif is N mod 10,
	N1 is N div 10,
	suma_cifre(N1, R1),
	R is R1 + Cif.
