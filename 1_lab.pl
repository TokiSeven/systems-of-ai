man(man1).
man(man2).
man(man3).
man(man4).

woman(woman1).
woman(woman2).
woman(woman3).

parent(man1, woman3).
parent(man1, man4).
parent(man3, woman3).
parent(man3, man4).
parent(woman1, man1).
parent(woman1, woman2).
parent(man2, man1).
parent(man2, woman2).

kol_det(woman3, man4, 2).
kol_det(woman2, man1, 2).

mother(woman3).
mother(woman2).

father(man1).
father(man4).

brother(Person, Bro) :- (
    parent(Person, Parent),
    parent(Bro, Parent),
    man(Bro),
    not(Person = Bro),
    !
).

sister(Person, Sis) :- (
    parent(Person, Parent),
    parent(Sis, Parent),
    woman(Sis),
    not(Person=Sis),
    !
).

uncle(Person, Uncle) :- (
    parent(Person, Parent),
    brother(Parent, Uncle),
    !
).

grandmother(Person, Grandma) :- (
    parent(Person, Parent),
    parent(Parent, Grandma),
    woman(Grandma),
    !
).