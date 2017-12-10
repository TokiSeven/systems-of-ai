listLength([], 0).
listLength([_|Tail], Len) :- (
    listLength(Tail, TailLength),
    Len is (TailLength + 1)
).