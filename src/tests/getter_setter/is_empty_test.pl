 :- use_module('../../main/getter_setter/is_empty.pl').

% Tests

:- begin_tests(is_empty).

test(is_empty_not_empty) :-
    \+ is_empty(1, 1, [[1, 2, 3], [4, 5, 6], [7, 8, 9]]).

test(is_empty_empty) :-
    is_empty(1, 1, [[empty, empty, empty], [empty, empty, empty], [empty, empty, empty]]),
    assertion(true).

:- end_tests(is_empty).