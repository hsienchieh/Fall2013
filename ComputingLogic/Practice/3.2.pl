%% last(Item, List) where Item is the last element of list List


conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

%% with conc
last(Item,List):-
conc(_,Item,List).