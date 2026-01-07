inOddPositions([], []).
inOddPositions([X], [X]).
inOddPositions([O, _ | Tail], [O | Tail2]) :-
    inOddPositions(Tail, Tail2).