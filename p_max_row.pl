p([], []).

p([Row|Rows], [Max|Maxs]) :-
    max_row(Row, Max),
    p(Rows, Maxs).

max_row([H|T], Max) :-
    max_acc(T, H, Max).

max_acc([], Current, Current).

max_acc([H|T], Current, Max) :-
    ( H > Current ->
        Next = H
    ;
        Next = Current
    ),
    max_acc(T, Next, Max).