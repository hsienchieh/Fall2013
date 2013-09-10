%% dividelist( List, List1, List2)
%% so that the elements of List are partitioned between List1 and List2, and
%% List1 and List2 are of approximately the same length. For example,
%% partition( [a,b,c,d,e], [a,c,e], [b,d] ).

dividelist([],[],[]).
dividelist(X,X,[]).
dividelist([X,Y|Tail],[X|Lx],[Y|Ly]):-
dividelist(Tail,Lx,Ly).