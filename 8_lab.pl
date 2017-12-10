man(man1).
man(man2).
man(man3).
man(man4).
man(man5).
man(man6).
man(man7).
man(man8).

woman(woman1).
woman(woman2).
woman(woman3).
woman(woman4).
woman(woman5).
woman(woman6).
woman(woman7).

old(man1, 16).
old(man2, 17).
old(man3, 18).
old(man4, 19).
old(man5, 20).
old(man6, 21).
old(man7, 22).
old(man8, 23).

old(woman1, 22).
old(woman2, 21).
old(woman3, 20).
old(woman4, 19).
old(woman5, 18).
old(woman6, 17).
old(woman7, 16).

allMenMoreThan18() :- (
    man(ManName),
    old(ManName, Years),
    Years > 18,
    write(ManName), nl
).
