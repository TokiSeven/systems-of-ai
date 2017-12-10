sum([], 0).
sum([H|T], R) :- (
    convert(H, Item),
    sum(T, TailSum),
    R is (Item + TailSum)
).

convert(Number, Item) :- (
    IsOdd is (Number mod 2),
    (
        IsOdd = 0, Item = Number;
        IsOdd > 0, Item = 0
    ), !
).