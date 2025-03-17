:- use_module('../../main/checks/check_column.pl').

% Tests

:- begin_tests(check_column).

test(column_check_no_win) :-
    \+ check_cols([[x, o, x], [o, x, o], [x, o, x]], 3, _).

test(column_check_win_x) :-
    check_cols([[x, o, x], [x, x, o], [x, o, x]], 3, Result),
    assertion(Result == x).

test(column_check_win_o) :-
    check_cols([[o,o,x], [o,x,o], [o,o,x]], 3, Result),
    assertion(Result == o).

:- end_tests(check_column).
