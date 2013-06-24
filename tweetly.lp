penguin(tweety).
parrot(polly).

bird(B) :- penguin(B).
bird(B) :- parrot(B).

canfly(B) :- bird(B), not penguin(B).

:- not canfly(tweety).
