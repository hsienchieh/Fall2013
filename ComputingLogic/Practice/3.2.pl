%% last(Item, List) where Item is the last element of list List


conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

%% with conc
last(Item,List):-
conc(_,[Item|[]],List).

%%without conc
last2(Item,[Item|[]]).
last2(Item,[Head|Tail]):-
last2(Item,Tail).