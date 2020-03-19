:-[family].

% X is a parent of Y
parent_of(X,Y):-
	father_of(X,Y);
	mother_of(X,Y).

% X is a grandparent of Y
grandparent_of(X,Y):-
	parent_of(Z,Y),
	parent_of(X,Z).

% X is a great grandparent of Y.
great_grandparent_of(X,Y):-
	grandparent_of(Z,Y),
	parent_of(X,Z).	


% X is a great grandparent of Y.
great_great_grandparent_of(X,Y):-
	great_grandparent_of(Z,Y),
	parent_of(X,Z).


% X is a great grandparent of Y.
great_great_great_grandparent_of(X,Y):-
	great_great_grandparent_of(Z,Y),
	parent_of(X,Z).


% ancestor_of(X,Y): X is an ancestor of Y.
ancestor_of(X,Y):-
	grandparent_of(X,Y);
	great_grandparent_of(X,Y);
	great_great_grandparent_of(X,Y);
	great_great_great_grandparent_of(X,Y).

ancestor_of(X,Y):-
	ancestor_of(Z,Y),
	parent_of(X,Z).



