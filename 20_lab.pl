% http://www.swi-prolog.org/pldoc/man?predicate=sub_string/5
% sub_string(+String, ?Before, ?Length, ?After, ?SubString)
strLength("", 0).
strLength(Str, R) :- (
    sub_string(Str, 1, _, 0, AnotherLetters),
    strLength(AnotherLetters, LettersLength),
    R is LettersLength + 1,
    !
).