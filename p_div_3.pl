p(s(0), s(s(s(0)))).

p(s(I), X) :-
    p(I, Y),
    add_three(Y, X).

add_three(Y, s(s(s(Y)))).