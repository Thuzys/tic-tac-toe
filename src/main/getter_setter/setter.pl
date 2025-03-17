% Put the X in Board at Row and Col
:- module(put_in_array, [put_in_array/5]).

put_in_array(X, Row, Col, Board, NewBoard) :-
    nth1(Row, Board, RowList),
    replace_nth1(Col, RowList, X, NewRowList),
    replace_nth1(Row, Board, NewRowList, NewBoard).

% Helper predicate to replace nth element in a list
replace_nth1(Index, List, Elem, NewList) :-
    nth1(Index, List, _, Rest),
    nth1(Index, NewList, Elem, Rest).