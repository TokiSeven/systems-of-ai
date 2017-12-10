solve(A, B, C) :- (
    D is (B * B - 4 * A * C), (
        D < 0, write('There is no x1 & x2.');
        D is 0, X is (-B)/(2 * A), write('D == 0 => x1 == x2 == '), write(X);
        X1 is ((-B) + sqrt(D))/(2 * A), X2 is ((-B) - sqrt(D))/(2 * A),
            write('D > 0 ('), write(D), write('). X1 = '), write(X1), write('. X2 = '), write(X2)
    ), !
).