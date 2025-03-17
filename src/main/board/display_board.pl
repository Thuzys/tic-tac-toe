% Displays Board in the command line.

% Display example
% | x | . | . |
% | . | x | . |
% | . | . | x |

:- module(display_board, [display_board/1]).

display_board([]).

display_board([Row | RemainingRows]) :-
    write('| '),
    display_row(Row),
    nl,
    display_board(RemainingRows).

display_row([]).

display_row([Cell | RemainingCells]) :-
    write_cell(Cell),
    write(' | '),
    display_row(RemainingCells).

write_cell(empty) :- write('.').
write_cell(Cell) :- write(Cell).
