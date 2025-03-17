%board/board.pl
:- module(board, [is_full/1, initialize_board/2, display_board/1, is_win/3]).

:- use_module(board_full).
:- use_module(board_winner).
:- use_module(board_initializer).
:- use_module(display_board).
