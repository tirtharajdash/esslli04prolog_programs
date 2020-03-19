:-[recursivepredicate].

% X is not a parent of Y
not_parent_of(X,Y):-
	not(parent_of(X,Y)).


% second part of the question (magical creatures)

magicalcreature(dementor).
magicalcreature(unicorn).
magicalcreature(humancentipede).
magicalcreature(norbert).
magicalcreature(buckbeat).

% X likes a magical creature Y
likes(X,Y):-
	male(X),
	not(X = harry),
	magicalcreature(Y),
	not(Y = dementor).

% let's write the likes for any specific person
likes(X,Y):-
	X = harry,
	magicalcreature(Y),
	not(Y = dementor).
