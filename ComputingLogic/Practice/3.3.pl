%% Define even length list and odd length list

evenlength([]).
evenlength([_,_|L1]):-
evenlength(L1).

oddlength([_]).
oddlength([_|L1]):-
oddlength(L1).