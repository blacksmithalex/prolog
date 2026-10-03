min([H|T], Min) :-
    min_acc(T, H, Min).

min_acc([], Current, Current).

min_acc([H|T], Current, Min) :-
    ( H < Current ->
        Next = H
    ;
        Next = Current
    ),
    min_acc(T, Next, Min).