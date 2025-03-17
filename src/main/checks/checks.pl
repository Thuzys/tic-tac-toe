% checks/checks.pl
:- module(checks, [check_rows/2, check_diagonal/3, check_cols/3, all_same/2]).

:- use_module(check_diagonal).
:- use_module(check_row).
:- use_module(check_column).
:- use_module(all_same).