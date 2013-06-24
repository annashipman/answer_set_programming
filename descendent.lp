% use of variables to create a predicate

% father(F,C) - F is the father of C
% mother(M,C)

% facts
father(michael, anna).
mother(hilary, anna).

father(ivan, rob).
mother(linda, rob).

father(john, hilary).
mother(teresa, hilary).

father(ronald, ivan).
mother(jean, ivan).

% reasoning
% descendent(D,A) - A is the ancestor, D is the descendent
descendent(D,A) :- father(A,D).
descendent(D,A) :- mother(A,D).
descendent(D,A) :- descendent(D,Z), descendent(Z,A).

:- not descendent(rob, ronald).
