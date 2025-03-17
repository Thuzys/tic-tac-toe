% Check if the cell is empty
:- module(is_empty, [is_empty/3]).

is_empty(RowIndex, ColIndex, Matrix) :- 
    nth1(RowIndex, Matrix, RowList),
    nth1(ColIndex, RowList, empty).