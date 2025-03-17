:- module(check_column, [check_cols/3]). 

:- use_module(all_same).

% Check if all the elements in Col are the same, returning found
% value if they are, or false otherwise.

check_col(Matrix, Col, Value) :-
    maplist(nth1(Col), Matrix, ColList),   
    all_same(ColList, Value).       

% Check if the Matrix size Size have on column with equal elements.
check_cols(Matrix, Size, Value) :-
    check_cols(Matrix, Size, 1, Value).

% Check each col of the matrix.    
check_cols(Matrix, Size, Index, Value) :-
    check_col(Matrix, Index, Value), !          % Check the current col.
    ;                                           % or
    NextIndex is Index + 1,
    NextIndex < Size,
    check_cols(Matrix, Size, NextIndex, Value). % Goes to the next col.