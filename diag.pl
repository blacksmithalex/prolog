diag([], []).

diag([Row|Rows], [Element|Diagonal]) :-
    Row = [Element|_],
    remove_first_column(Rows, RestRows),
    diag(RestRows, Diagonal).

remove_first_column([], []).

remove_first_column([[_|Tail]|Rows], [Tail|RestRows]) :-
    remove_first_column(Rows, RestRows).