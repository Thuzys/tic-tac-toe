:- use_module('../../main/board/board_full.pl').

% Tests

:- begin_tests(board_full).

test(board_full_not_full) :-
    \+ is_full([[1, 2, 3],
                [4, 5, 6],
                [7, 8, empty]]).

test(board_full_full) :-
    is_full([[1, 2, 3],
             [4, 5, 6],
             [7, 8, 9]]),
    assertion(true).

:- end_tests(board_full).