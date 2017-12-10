max1(X, Y, R) :- ((
    X > Y, R = X;
    X < Y, R = Y;
    X is Y, R = X
), !).