%% Problem01

conc([],L,L).

conc([X|L1],L2,[X|L3]):-
	conc(L1,L2,L3).

interleave(X,Y,Z):-
	conc(X,Y,Z);
	conc(Y,X,Z).

interleave(X,Y,Z):-
	findinterleave(X,Y,Z).

findinterleave([], Xs, Xs).

findinterleave([X|Xs], [Y|Ys], [X,Y|Zs]) :- 
	findinterleave(Xs, Ys, Zs).
	
findinterleave([X|Xs], [Y|Ys], [Y,X|Zs]) :- 
	findinterleave(Xs, Ys, Zs).

%% Problem02

genprimes(N,[]):-
	N < 2, !.
genprimes(N,[2|L]) :- 
   listprime(1,N,L).

listprime(A,B,[]) :- 
    A > B, !.
	
listprime(A,B,[A|L]) :- 
    isprime(A), !, 
    A1 is A + 2, 
    listprime(A1,B,L).
	
listprime(A,B,L) :- 
    A1 is A + 2, 
    listprime(A1,B,L).
	
divisible(X,Y):-
	N is Y*Y,
	N =< X,
	X mod Y =:= 0.
	
divisible(X,Y):-
	Y < X,
	Y1 is Y+1,
	divisible(X,Y1).

isprime(X):-
	Y is 2, 
	X > 1, 
	\+divisible(X,Y).
	
%% Problem03

flatten([], []) :- !.
flatten([L|Ls], F) :-
    !,
    flatten(L, L1),
    flatten(Ls, Ls1),
    conc(L1, Ls1, F).
flatten(L, [L]).

%% Problem04*

item(a, 5).
item(b, 3).
item(c, 7).

block(0,[]).

block(N,[H]) :-
    item(H,Nh),
    D is N - Nh,
    D >= 0.

block(N,[H|T]) :-
    item(H,Nh),
    D is N - Nh,
    D >= 0,
	block(D,T).
	
%% Problem05
%%E -> T '+' E
%%E -> T
%%T -> F '*' T
%%T -> F
%%F -> '(' E ')'
%%F -> integer

eval([],[]).
eval([A,'+'|B], R) :- R is eval(A)+eval(B).
eval([A,'*'|B], R) :- R is eval(A)*eval(B).
eval(['(',A,')'],R) :- R is eval(A).
eval(A,A).



	






