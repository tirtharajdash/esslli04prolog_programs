male(paul).
female(helen).
male(albert).
female(ruth).
male(vernon).
female(petunia).
female(lily).
male(james).
female(dudley).
male(harry).

% father_of(X,Y): X is father of Y.
father_of(paul,petunia).
father_of(paul,lily).
father_of(albert,james).
father_of(vernon,dudley).
father_of(james,harry).

mother_of(helen,petunia).
mother_of(helen,lily).
mother_of(ruth,james).
mother_of(petunia,dudley).
mother_of(lily,harry).


% X is a daughter of Y
daughter_of(X,Y):-
	(
		mother_of(Y,X);
		father_of(Y,X)
	),
	famale(X).


son_of(X,Y):-
	(
		father_of(Y,X);
		mother_of(Y,X)
	),
	male(X).


grandfather_of(X,Y):-
	father_of(X,Z),
	(
		father_of(Z,Y);
		mother_of(Z,Y)
	).



grandmother_of(X,Y):-
	mother_of(X,Z),
	(
		father_of(Z,Y);
		mother_of(Z,Y)
	).


grandson_of(X,Y):-
	male(X),
	(
		grandfather_of(Y,X);
		grandmother_of(Y,X)
	).


granddaugtter_of(X,Y):-
	female(X),
	(
		grandfather_of(Y,X);
		grandmother_of(Y,X)
	).


grandchild_of(X,Y):-
	grandson_of(X,Y);
	granddaughter_of(X,Y).



grandchild_of(Z,X,Y):-
	(
		male(X),
		female(Y)
	);
	(
		female(X),
		male(Y)
	),
	grandchild_of(Z,X),
	grandchild_of(Z,Y).


sister_of(X,Y):-
	female(X),
	X \== Y,
	(
		father_of(Z,X),
		father_of(Z,Y)
	);
	(
		mother_of(Z,X),
		mother_of(Z,Y)
	).



sister_of(X,Y):-
	female(X),
	X \== Y,
	(
		father_of(Z,X),
		son_of(Y,Z);
		daughter_of(Y,Z)
	);
	(
		mother_of(Z,X),
		son_of(Y,Z);
		daughter_of(Y,Z)
	).
