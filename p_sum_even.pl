p([], []).

p([Row|Rows], [Sum|Sums]) :-
    sumeven(Row, Sum),
    p(Rows, Sums).

sumeven([], 0).

sumeven([H|T], S) :-
    sumeven(T, S1),
    ( H mod 2 =:= 0 ->
        S is S1 + H
    ;
        S is S1
    ).