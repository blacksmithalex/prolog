countneg([], 0).

countneg([H|T], C) :-
    countneg(T, C1),
    ( H < 0 ->
        C is C1 + 1
    ;
        C is C1
    ).