%% Reverse list reverse(List,ReverseList).

conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

reverse([],[]).
reverse([X|Y],Z):-
reverse(Y,W),
conc(W,[X],Z).

reverse2([],A,A).
reverse2([X|Xs],A,Ys):-
reverse2(Xs,[X|A],Ys).




