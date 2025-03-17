% Consult this file to run the tests.
:- consult('./checks/check_column_test.pl').
:- consult('./checks/check_diagonal_test.pl').
:- consult('./checks/check_row_test.pl').
:- consult('./board/is_full_test.pl').
:- consult('./board/board_winner_test.pl').
:- consult('./getter_setter/is_empty_test.pl').
:- consult('./getter_setter/setter_test.pl').
?- run_tests.