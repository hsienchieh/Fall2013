del([X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):-
del(X,Tail,Tail1).

insert(X,L,L1):-

del(X,L1,L).

permutation([],[]).
permutation([X|L],P):-
permutation(L,L1),insert(X,L1,P).

permutation2([],[]).
permutation2(L,[X|P]):-
del(X,L,L1),
permutation2(L1,P).