%%subset(Set,Subset).

conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

subset(L,S):-
conc(L1,L2,L),
conc(S,L3,L2).