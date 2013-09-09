%% Write a goal, using conc, to delete the last three elements from a list L
%% producing another list L1. Hint: L is the cconcatnation of L1 and a three-element list

conc([],L,L).
conc([X|L1],L2,[X|L3]):-
conc(L1,L2,L3).

%% delete the last 3 elements
conc(L1,[_,_,_],L).

%% delete the first and the last 3 elements
conc([_,_,_],[L1,_,_,_],L).

