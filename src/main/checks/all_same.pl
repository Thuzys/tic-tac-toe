:- module(all_same, [all_same/2]).

% Checks if all elements in a list are the same,
% returning the value if they are all the same
% or false if they are not all the same.

all_same([], _).
all_same(List, Value) :-
    nth1(1, List, Value),
    all_equal(List, Value).

all_equal([], _).
all_equal([H | T], Value) :-
    H == Value,
    all_equal(T, Value).