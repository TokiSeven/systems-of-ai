pow(X, N, R) :- (
    (
        N = 0, R is 1;
        N > 0, Nnext is (N - 1), pow(X, Nnext, Rnext), R is (X * Rnext)
    ), !
).