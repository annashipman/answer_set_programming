caprese :- tomato, mozarella, oil.

starter :- caprese.
mains :- steak, fries.
dessert :- strawberries, icecream.

menu1 :- starter, mains.
menu2 :- mains, dessert.

% choice rule
% minimum{ choices } maximum
% syntactic sugar
% 1{choice1, choice2}1.

% negation as failure to model choice
choice1 :- menu1, not choice2.
choice2 :- menu2, not choice1.

menu :- choice1.
menu :- choice2.

% contraints
% i.e. a rule without a conclusion
:- not menu.

% facts
% i.e. a rule without a condition
tomato.
mozarella.
oil.
steak.
fries.
strawberries.
icecream.

#hide.
#show choice1.
#show choice2.
