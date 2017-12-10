fib(X, Z) :- ((
    (X = 1, Z is 0);
    (X = 2, Z is 1);
    (X > 2,
        X1 is X - 1,
        X2 is X - 2,
        fib(X1, Z1),
        fib(X2, Z2),
        Z is Z1 + Z2
    )
), !).