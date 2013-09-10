%% translate(List1,List2)
means(0,zero).
means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,night).
translate([],[]).
translate([X1|Y1],[X2|Y2]):-
means(X1,X2),translate(Y1,Y2).