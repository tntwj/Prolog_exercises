filter([], _, []).
count([], _, 0).

count([X|T], X, N) :-
    count(T, X, N1),
    N is N1 + 1,
    !.
count([Y|T], X, N) :-
    count(T, X, N).

filter([X|T], L2, [X|Rest]) :-
    count(L2, X, N),
    N > 1,
    !,
    filter(T, L2, Rest).
filter([_|T], L2, Rest) :-
    filter(T, L2, Rest).