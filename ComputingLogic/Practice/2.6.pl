f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N):-
f(X,N).

%% f(s(1),A).
%% A = two

%% f(s(s(1)),two).
%% false

%% f(s(s(s(s(s(s(1)))))),C).
%% X = s(s(s(1))) C = N

%% f(D, three).
%% D = s(s(1)).