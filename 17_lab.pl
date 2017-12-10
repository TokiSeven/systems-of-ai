max([H|T], R) :- (
    T = [], R is H, !;
    max(T, TailMax), (
        H > TailMax, R = H;
        H =< TailMax, R = TailMax
    ), !
).