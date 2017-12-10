compare(X, Y) :- (
    write(X), (
        X is Y, write(' == ');
        X > Y, write(' > ');
        X < Y, write(' < ')
    ),
    write(Y), nl, !
).