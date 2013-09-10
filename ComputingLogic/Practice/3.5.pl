%% palindrome
pal([]).
pal(_).
pal([X,Y|[X|[]]]):-
pal(Y).