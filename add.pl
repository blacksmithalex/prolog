add(A, 0, A).

add(s(A), s(B), C) :-
    add(A, B, C).