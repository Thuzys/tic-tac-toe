% This file contains the predicate that checks if the board is full

:- module(board_full, [is_full/1]).

is_full([]).
is_full([H | T]) :-
    is_row_full(H),
    is_full(T).

is_row_full([]).
is_row_full([H | T]) :-
    check_element(H),
    is_row_full(T).

check_element(H) :-
    H \= empty.