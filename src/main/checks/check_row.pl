:- module(check_row, [check_rows/2]).

:- use_module(all_same).

% Checks if a matrix has a row where all elements are the same,
% Returning the found value if it does have one, or false if not.

check_rows([], _) :- false.
check_rows([Row | RemainingRows], Value) :-
    all_same(Row, Value), ! % Check if all the elements are the same
    ;                          % Or
    check_rows(RemainingRows, Value). % Check the remaining rows
