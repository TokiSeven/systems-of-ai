f(X, Y, R) :- (
    XY is (X + Y), (
        XY < -1, R is (2 * X);
        XY >= -1, XY =< 1, R is cos(X * Y);
        XY > 1, R is sqrt(X + Y)
    )
).