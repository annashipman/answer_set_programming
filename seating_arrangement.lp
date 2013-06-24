person(anna).
person(ivan).
person(dave).
person(john).
person(rob).
person(alexander).
person(james).

table(1).
table(2).
table(3).

% allocate each person to exactly one table
% : table(T) <- this means for all the tables that are true
1{seating(P,T) : table(T)}1 :- person(P).

% two or three people per table
2{seating(P,T) : person(P)}3 :- table(T).

% ivan and anna cannot be seated together UNDER ANY CIRCUMSTANCES
:- seating(ivan,T1), seating(anna,T2), T1 = T2.

% ivan and rob always at same table
:- seating(ivan,T1), seating(rob,T2), T1 != T2.

#hide.
#show seating(X,Y).
