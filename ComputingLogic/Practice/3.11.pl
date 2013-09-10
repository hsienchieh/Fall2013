%% flatten( List, Flatlist)

conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

flatten([],[]).
flatten([X],X).
flatten(X,X).
flatten([X|Tail],L):-
flatten(X,L1),
flatten(Tail,L2),
conc(L1,L2,L).