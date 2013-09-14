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
genprimes(N,L) :- 
   p_list(1,N,L).

p_list(A,B,[]) :- 
   A > B, !.
p_list(A,B,[A|L]) :- 
    isprime(A), !, 
    A1 is A + 2, 
    p_list(A1,B,L).

p_list(A,B,L) :- 
    A1 is A + 2, 
    p_list(A1,B,L).
	
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






