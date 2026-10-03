p(s(0), s(s(s(s(s(0)))))).

p(s(I), X) :-
    p(I, Y),
    add_five(Y, X).

add_five(Y, s(s(s(s(s(Y)))))).