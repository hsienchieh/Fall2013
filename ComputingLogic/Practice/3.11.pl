%% flatten( List, Flatlist)

flatten(List, FlatList) :-
    flatten(List, [], FlatList0), !,
    FlatList = FlatList0.

flatten(Var, Tl, [Var|Tl]) :-
    var(Var), !.
flatten([], Tl, Tl) :- !.
flatten([Hd|Tl], Tail, List) :- !,
    flatten(Hd, FlatHeadTail, List),
    flatten(Tl, Tail, FlatHeadTail).
flatten(NonList, Tl, [NonList|Tl]).