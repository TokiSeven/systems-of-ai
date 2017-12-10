parent(person1,  person2).
parent(person3,  person2).
parent(person2,  person11).
parent(person5,  person4).
parent(person1,  person6).
parent(person7,  person8).
parent(person8,  person9).
parent(person9,  person10).
parent(person11, person10).

parentsAndMore(Person, R) :- (
    parent(R, Person);
    parent(Par, Person), parentsAndMore(Par, R)
).