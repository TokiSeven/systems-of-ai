winner(sname1, sname2).
winner(sname3, sname1).
winner(sname4, sname5).
winner(sname4, sname6).
 
classificator(X) :- (
    winner(X, _),
    winner(_, X),
    write(X), write(' is figther!'), nl, !;

    winner(X, _),
    write(X), write(' is winner!'), nl, !;

    winner(_, X),
    write(X), write(' is loser!'), nl, !
).
