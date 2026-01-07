filter([], _, []).

filter([H|T], L2, [H|T3]) :- 
    member(H, L2), 
    \+ member(H, T), 
    filter(T, L2, T3).

filter([H|T], L2, T3) :- 
    member(H, L2), 
    member(H, T), 
    filter(..., ..., ...).

filter([H|T], L2, T3) :- 
    \+ member(H, L2), 
    filter(T, L2, T3).

:- filter([1,3,4,3], [4,5,3,7,3], L3).