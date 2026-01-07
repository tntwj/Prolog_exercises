filter([], []).

filter([p(X)|T], [p(Y)|T2]) :-
    number(X),
    !,          
    Y is X + 1,
    filter(T, T2).


filter([H|T], [H|T2]) :-
    filter(T, T2).