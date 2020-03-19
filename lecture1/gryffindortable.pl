% sits_right_of(X,Y). Y sits right of X.).
sits_right_of(katie,natalie).
sits_right_of(natalie,ron).
sits_right_of(ron, hermione).
sits_right_of(hermione,harry).
sits_right_of(harry,colin).
sits_right_of(colin,seamus).
sits_right_of(seamus,angelina).
sits_right_of(angelina,ginny).
sits_right_of(ginny,dean).
sits_right_of(dean,dennis).
sits_right_of(dennis,lee).
sits_right_of(lee,george).
sits_right_of(george,fred).
sits_right_of(fred,alicia).
sits_right_of(alicia,neville).
sits_right_of(neville,lavender).
sits_right_of(lavender,parvati).


sits_left_of(X,Y):-
	sits_right_of(Y,X).


are_neighbors_of(X,Y,Z):-
	sits_left_of(Z,X),
	sits_right_of(Z,Y).


next_to_each_other(X,Y):-
	sits_left_of(X,Y);
	sits_right_of(X,Y);
	sits_left_of(Y,X);
	sits_right_of(Y,X).


sitting_at_table(X):-
	sits_left_of(X,_).


sitting_two_seats_right_of(X,Y):-
	sits_right_of(X,Z),
	sits_right_of(Z,Y).


sitting_between(X,Y,Z):-
	(
		sits_right_of(X,Z),
		sits_left_of(Y,Z)
	);
	(
		sits_left_of(X,Z),
		sits_right_of(Y,Z)
	).
