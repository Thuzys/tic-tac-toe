:- use_module('../../main/board/board_winner.pl').

% Tests

:- begin_tests(board_winner).

test(board_winner_row) :-
    is_win([[1, 1, 1],
            [2, w, 2],
            [3, 3, a]], 3, Result),
    assertion(Result == 1).

test(board_winner_col) :-
    is_win([[1, 2, 3],
            [1, w, 3],
            [1, 2, a]], 3, Result),
    assertion(Result == 1).

test(board_winner_diag) :-
    is_win([[w, 2, 3],
            [4, w, 6],
            [7, 8, w]], 3, Result),
    assertion(Result == w).

:- end_tests(board_winner).