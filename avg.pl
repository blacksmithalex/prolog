avg(List, A) :-
    sum_list(List, Sum),
    length(List, N),
    N > 0,
    A is Sum / N.