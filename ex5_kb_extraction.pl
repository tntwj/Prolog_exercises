parent(francesco, federico). 
parent(chiara, federico). 
parent(francesco, elena).

people(L) :- 
    findall((X,Y), parent(X,Y), L1), 
    flat(L1,L2), 
    clean_rep(L2, L).

flat([], []). 
flat([(X,Y)|T], [X,Y|Rest]) :- 
    flat(T, Rest).

clean_rep([], []). 
clean_rep([X|T], [X|Rest]) :- 
    \+member(X,T), 
    !, 
    clean_rep(T,Rest). 
clean_rep([_|T], Rest) :- 
    clean_rep(T,Rest). 