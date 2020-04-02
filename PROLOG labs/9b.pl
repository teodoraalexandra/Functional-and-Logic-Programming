cmmdc(A,A,R):-R=A,!.
cmmdc(A,B,R):-A>B,
	C is A-B,
	cmmdc(C,B,R).
cmmdc(A,B,R):-A<B,
	C is B-A,
	cmmdc(A,C,R).
cmmdcList([H],H):-!.
cmmdcList([H1,H2|T],R):-
	cmmdc(H1,H2,R1),
	cmmdcList([R1|T],R).
