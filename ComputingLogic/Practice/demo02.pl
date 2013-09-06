%% Demo coming from http://clwww.essex.ac.uk/course/LG519/2-facts/index_18.html
%%
%% Please load this file into SWI-Prolog
%%
%% Sam's likes and dislikes in food
%%
%% Considering the following will give some practice
%% in thinking about backtracking.
%% ?- likes(sam,dahl).
%% ?- likes(sam,chop_suey).
%% ?- likes(sam,pizza).
%% ?- likes(sam,chips).
%% ?- likes(sam,curry).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
male(tom).
female(liz).
female(pat).
female(ann).
male(jim).

offspring(X,Y):-
parent(Y,X),
female(X).

mother(X,Y):-
parent(X,Y),
female(X).

grandparent(X,Y):-
parent(X,Z),
parent(Z,Y).

sister(X,Y):-
parent(Z,X),
parent(Z,Y),
female(X).

happy(X):-
parent(X,Y).

hastwochildren(X):-
parent(X,Y),sister(Y,Z).

grandchild(X,Y):-
parent(Y,Z),parent(Z,X).

predecessor(X,Y):-parent(X,Y).
predecessor(X,Y):-parent(X,Z),predecessor(Z,Y).
