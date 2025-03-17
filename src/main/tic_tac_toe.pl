:- use_module('./getter_setter/getter_setter.pl').
:- use_module('./checks/checks.pl').
:- use_module('./board/board.pl').

% Main game loop
play :- 
    write('Enter Board size (e.g., 3 for 3x3): '), nl,
    read(Size),
    integer(Size),
    Size > 1,
    initialize_board(Size, Board),
    Player = x,  % Set initial player
    game_loop(Board, Size, Player).
play :-  % Alternative clause for invalid board size
    write('Size must be greater than 1'), nl.

get_move(Board, Size, Player) :-
    format('~w : enter Row and Col:', [Player]), nl,
    read(Row), read(Col),
    integer(Row), integer(Col),
    (is_empty(Row, Col, Board), Row > 0, Col > 0, Row =< Size, Col =< Size -> 
        game_loop(Row, Col, Board, Size, Player)
    ;
        write('Invalid position.'), nl,
        game_loop(Board, Size, Player)
    ).

% Switch players
switch_player(x, o).
switch_player(o, x).

game_loop(Board, Size, Player) :-
    display_board(Board),
    get_move(Board, Size, Player).

game_loop(Row, Col, Board, Size, Player) :-
    put_in_array(Player, Row, Col, Board, NewBoard),
    (is_win(NewBoard, Size, Player) ->  % Check if the current player has won
        display_board(NewBoard),
        format('~w won the game.', [Player]), nl
    ;
    is_full(NewBoard) ->  % Check if the board is full (draw)
        display_board(NewBoard),
        write('The game is a draw.'), nl
    ;
        switch_player(Player, NextPlayer),  % Switch players
        game_loop(NewBoard, Size, NextPlayer)
    ).
