%% shift(List1,List2) so that List2 is List1 shifted rotationally

conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

shift([],[]).
shift([X|Y],P):-
conc(Y,X,P).