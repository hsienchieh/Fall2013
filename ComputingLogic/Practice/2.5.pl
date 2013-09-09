%% regular( R)
%% which is true if R is a rectangle whose sides are vertical and horizontal.
point(X,Y).
rectangle(point(_,_),point(_,_),point(_,_)).
vertical(point(X,Y1),point(X,Y2)).
horizontal(point(X1,Y),point(X2,Y)).

common(point(X1,Y1),point(X2,Y2)):-
vertical(point(X1,Y1),point(X2,Y2)).

common(point(X1,Y1),point(X2,Y2)):-
horizontal(point(X1,Y1),point(X2,Y2)).

regular(rectangle(point(X1,Y1),point(X2,Y2),point(X3,Y3))):-
common(point(X1,Y1),point(X2,Y2)),
common(point(X2,Y2),point(X3,Y3)).