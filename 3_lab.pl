a(X, R) :- (
    R is sqrt(abs(X)),
    write('sqrt(|X|)='),
    write(R), nl
).
b(Y, R) :- (
    R is (cos(Y)+2),
    write('cos(y)+2='),
    write(R), nl
).
f(X, Y, R) :- (
    a(X, A),
    b(Y, B),
    R is (3 * Y * A + sin(X * Y) * B),
    write('f(x,y)='),
    write(R), nl
).


f2(X, Y, R) :- (
    A is sqrt(abs(X)),
    write('sqrt(|X|)='),
    write(A), nl,
    B is (cos(Y)+2),
    write('cos(y)+2='),
    write(B), nl,
    R is (3 * Y * A + sin(X * Y) * B),
    write('f(x,y)='),
    write(R), nl
).
