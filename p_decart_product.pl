p([], _, []).

p([A|As], B, C) :-
    pairs(A, B, C1),
    p(As, B, C2),
    append_pairs(C1, C2, C).

pairs(_, [], []).

pairs(A, [B|Bs], [[A,B]|Pairs]) :-
    pairs(A, Bs, Pairs).

append_pairs([], List, List).

append_pairs([H|T], List, [H|Result]) :-
    append_pairs(T, List, Result).