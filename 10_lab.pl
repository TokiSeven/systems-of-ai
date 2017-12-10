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

hairColor(man1, redhead).
hairColor(man2, white).
hairColor(man3, black).
hairColor(man4, brown).
hairColor(man5, redhead).
hairColor(man6, black).
hairColor(man7, redhead).
hairColor(man8, black).

hairColor(woman1, white).
hairColor(woman2, red).
hairColor(woman3, redhead).
hairColor(woman4, brown).
hairColor(woman5, redhead).
hairColor(woman6, yellow).
hairColor(woman7, red).

city(man1,[ tokyo, shenzhen ]).
city(man2,[ seoul, chicago ]).
city(man3,[ new_york, rio_de_janeiro ]).
city(man4,[ shenzhen, hong_kong ]).
city(man5,[ tokyo, rome ]).
city(man6,[ moscow, miami ]).
city(man7,[ los_angeles, barcelona ]).
city(man8,[ paris, berlin ]).

city(woman1,[ new_york, hong_kong ]).
city(woman2,[ los_angeles ]).
city(woman3,[ shenzhen, rio_de_janeiro ]).
city(woman4,[ moscow, barcelona ]).
city(woman5,[ paris, miami ]).
city(woman6,[ tokyo, berlin ]).
city(woman7,[ chicago, toronto ]).

find() :- (
    man(Man),
    hairColor(Man, redhead),
    old(Man, Years),
    Years > 18,
    !,
    city(Man, Cities),
    write('Man: '), write(Man), nl,
    write('Cities: '), write(Cities)
).
