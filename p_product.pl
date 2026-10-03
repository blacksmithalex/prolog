p([], []).

p([Row|Rows], [Product|Products]) :-
    product_list(Row, Product),
    p(Rows, Products).

product_list([], 1).

product_list([H|T], Product) :-
    product_list(T, Product1),
    Product is H * Product1.