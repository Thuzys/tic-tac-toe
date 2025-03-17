:- use_module('../../main/getter_setter/setter.pl').

:- begin_tests(put_in_array).

% Test 1: Place an element in a 2x2 board
test(put_in_array_2x2) :-
    put_in_array(x, 1, 1, [[o, x], [o, o]], NewBoard),
    assertion(NewBoard == [[x, x], [o, o]]).

% Test 2: Place an element in a 3x3 board
test(put_in_array_3x3) :-
    put_in_array(o, 2, 2, [[x, o, x], [o, [], x], [x, x, x]], NewBoard),
    assertion(NewBoard == [[x, o, x], [o, o, x], [x, x, x]]).

% Test 3: Replace an existing element in the board
test(put_in_array_replacing) :-
    put_in_array(o, 2, 3, [[x, x, x], [x, x, x], [x, x, x]], NewBoard),
    assertion(NewBoard == [[x, x, x], [x, x, o], [x, x, x]]).

% Test 4: Place an element at the last position of the board
test(put_in_array_last_pos) :-
    put_in_array(o, 3, 3, [[[], [], []], [[], [], []], [[], [], []]], NewBoard),
    assertion(NewBoard == [[[], [], []], [[], [], []], [[], [], o]]).

% Test 5: Ensure immutability of the original board
test(put_in_array_does_not_change_Board) :-
    Board = [[[], [], []], [[], [], []], [[], [], []]],
    put_in_array(x, 1, 1, Board, NewBoard),
    assertion(Board == [[[], [], []], [[], [], []], [[], [], []]]),
    assertion(NewBoard == [[x, [], []], [[], [], []], [[], [], []]]).

:- end_tests(put_in_array).