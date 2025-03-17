:- module(board_initializer, [initialize_board/2]).

% Board Initialization
% initialize_board(+Size, -Board)
% Initializes a board of size Size x Size with empty spots
% Size: Size of the board
% Board: The initialized board
initialize_board(Size, Board) :- 
    length(Board, Size),
    maplist(same_length(Board), Board),
    maplist(maplist(=(empty)), Board).