:- use_module('../../main/checks/check_diagonal.pl').

% Tests

:- begin_tests(check_diagonal).

test(diagonal_check_no_win) :-
    \+ check_diagonal([[x, o, x], [o, o, o], [x, o, x]], 3, _).

test(primary_diagonal_check_win_x) :-
    check_diagonal([[x, o, o], [o, x, o], [x, o, x]], 3, Result),
    assertion(Result == x).

test(secondary_diagonal_check_win_o) :-
    check_diagonal([[o, x, o], [o, o, x], [o, o, x]], 3, Result),
    assertion(Result == o).

test(diagonal_check_no_win_4x4) :-
    check_diagonal([[x, o, x, x], [o, x, o, x], [x, o, x, x], [x, o, x, x]], 4, Result),
    assertion(Result == x).

test(secondary_diagonal_check_win_o_4x4) :-
    check_diagonal([[o, x, o, o], [o, o, o, x], [o, o, x, x], [o, o, x, x]], 4, Result),
    assertion(Result == o).

:- end_tests(check_diagonal).
