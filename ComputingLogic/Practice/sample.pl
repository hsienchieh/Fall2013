flatten([], []) :- !.
flatten([L|Ls], F) :-
    !,
    flatten(L, L1),
    flatten(Ls, Ls1),
    conc(L1, Ls1, F).
flatten(L, [L]).

conc([],L,L).

conc([X|L1],L2,[X|L3]):-
	conc(L1,L2,L3).
	
%% flatten([[[1,2],[3,4]],5,[6,[7,8]]], L2)