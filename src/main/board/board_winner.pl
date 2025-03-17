:- module(board_winner, [is_win/3]).

:- use_module('../checks/checks.pl').

% Check if a player has won the game
is_win(Board, Size, Player) :-
    check_rows(Board, Player), ! % Check for win in rows
    ;                  
    check_cols(Board, Size, Player), ! % Check for win in columns
    ;
    check_diagonal(Board, Size, Player). % Check for win in diagonals
