translate(1, 'Один').
translate(2, 'Два').
translate(3, 'Три').
translate(4, 'Четыре').
translate(5, 'Пять').
translate(6, 'Шесть').
translate(7, 'Семь').
translate(8, 'Восемь').
translate(9, 'Девять').
translate(0, 'Ноль').

toLetters([], []).
toLetters([H|T], R) :- (
    toLetters(T, Tail),
    translate(H, Letter),
    R = [Letter|Tail]
).
