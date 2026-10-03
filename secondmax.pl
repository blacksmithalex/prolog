secondmax([A, B|T], S) :-
    ( A >= B ->
        Max = A,
        Second = B
    ;
        Max = B,
        Second = A
    ),
    secondmax_acc(T, Max, Second, S).

secondmax_acc([], _, Second, Second).

secondmax_acc([H|T], Max, Second, S) :-
    ( H >= Max ->
        NewMax = H,
        NewSecond = Max
    ; H > Second ->
        NewMax = Max,
        NewSecond = H
    ;
        NewMax = Max,
        NewSecond = Second
    ),
    secondmax_acc(T, NewMax, NewSecond, S).