sumeven([], 0).

sumeven([H|T], S) :-
    sumeven(T, S1),
    ( H mod 2 =:= 0 ->
        S is S1 + H
    ;
        S is S1
    ).