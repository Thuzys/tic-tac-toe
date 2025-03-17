:- use_module('../../main/checks/check_row.pl').

:- begin_tests(rows).

test(check_rows_true) :-
    check_rows([[1, 1, 1],
                [2, 2, 2],
                [3, 3, 3]], Result),
    assertion(Result == 1).

test(check_rows_true2) :-
    check_rows([[1, 1, 2],
                [2, 2, 2],
                [3, 1, 3]], Result),
    assertion(Result == 2).

test(check_rows_true3) :-
    check_rows([[1, 1, 3],
                [2, 1, 2],
                [3, 3, 3]], Result),
    assertion(Result == 3).

test(check_rows_false) :-
    \+ check_rows([[1, 1, 3],
                   [2, 1, 2],
                   [3, 3, 1]], _).


test(check_rows_true_large) :-
    check_rows([[1, 1, 1, 1, 1],
                [2, 2, 2, 2, 2],
                [3, 3, 3, 3, 3],
                [4, 4, 4, 4, 4],
                [5, 5, 5, 5, 5]], Result),
    assertion(Result == 1).

test(check_rows_false_large) :-
    \+ check_rows([[1, 1, 4, 1, 1],
                   [2, 2, 0, 2, 2],
                   [3, 1, 3, 3, 3],
                   [4, 4, 3, 4, 4],
                   [5, 5, 5, 5, 6]], _).
                   
:- end_tests(rows).