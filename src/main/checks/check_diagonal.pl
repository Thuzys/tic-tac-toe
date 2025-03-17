% Checks if there is a diagonal with all equal values,
% returning the found value if there is one.

:- module(check_diagonal, [check_diagonal/3]).

check_diagonal(Matrix, RowSize, Value) :-
    diagonal(Matrix, primary, RowSize, Value), !    % Main diagonal
    ;                                               % or
    diagonal(Matrix, secondary, RowSize, Value).   % Secondary diagonal

diagonal(Matrix, primary, RowSize, Value) :- % Add start idx to primary diagonal function call 
    diagonal(Matrix, primary, 1, RowSize, Value).

diagonal(Matrix, secondary, RowSize, Value) :-
    StartIndex is RowSize,
    diagonal(Matrix, secondary, StartIndex, RowSize, Value). % Add start idx to secondary diagonal function call    

diagonal([], _, _, _,[]).  

diagonal([H | []], primary, _, RowSize, V) :-
    !,
    nth1(RowSize, H, V).      

diagonal([H | []], secondary, _, _, V) :-
    !,
    nth1(1, H, V).  

diagonal([Row | RemainingRows], primary, Index, RowSize, Value) :-
    NextIndex is Index + 1,                   
    diagonal(RemainingRows, primary, NextIndex, RowSize, Value),
    nth1(Index, Row, Cell),
    Cell == Value.

diagonal([Row | RemainingRows], secondary, Index, RowSize, Value) :-
    NextIndex is Index - 1,                    
    diagonal(RemainingRows, secondary, NextIndex, RowSize, Value),
    nth1(Index, Row, Cell),      
    Cell == Value.