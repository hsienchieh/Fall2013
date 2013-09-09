point(1,1).
point(2,3).
point(2,2).
point(1,2).
point(2,1).

triangle(point(X1,Y1),point(X2,Y2),point(X3,Y3)).
rectangle(point(X,Y),point(X,_),point(_,Y)).
rectangle(point(X,Y),point(X,_),point(Y,X)).
circle(point(_,_),_).
square(point(X,Y),point(X,_),point(_,Y)).