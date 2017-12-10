stream(group_1, group_2, group_3).

% Groups
group_1(st_1).
group_1(st_2).
group_1(st_3).

group_2(st_4).
group_2(st_5).
group_2(st_6).

group_3(st_7).
group_3(st_8).
group_3(st_9).

% Marks
mark(st_1, 5, 4, 4, 5, 5).
mark(st_2, 5, 5, 5, 5, 5).
mark(st_3, 3, 2, 1, 2, 3).
mark(st_4, 4, 3, 2, 1, 2).
mark(st_5, 5, 4, 3, 2, 1).
mark(st_6, 4, 5, 4, 3, 2).
mark(st_7, 3, 4, 5, 4, 3).
mark(st_8, 2, 3, 4, 5, 4).
mark(st_9, 4, 4, 4, 4, 5).

% Good students (task 1)
whoHasMarkMoreThan3(Student) :- (
    mark(Student, Mark1, Mark2, Mark3, Mark4, Mark5),
    MinGoodMark is 4,
    Mark1 >= MinGoodMark,
    Mark2 >= MinGoodMark,
    Mark3 >= MinGoodMark,
    Mark4 >= MinGoodMark,
    Mark5 >= MinGoodMark
).

whoHasMarkMoreThan3WithError(Student) :- (
    whoHasMarkMoreThan3(Student);
    write('There are no good students.'), nl, !
).

% Good students in group (task 2)
whoHasMarkMoreThan3AndInGroup(Group, Student) :- (
    Group > 3, write('Incorrect group number'), nl, !;
    whoHasMarkMoreThan3(Student), (
        Group = 1, group_1(Student);
        Group = 2, group_2(Student);
        Group = 3, group_3(Student)
    )
).

whoHasMarkMoreThan3AndInGroupWithError(Group, Student) :- (
    whoHasMarkMoreThan3AndInGroup(Group, Student);
    write('There is not good students in selected group.'), nl, !
).

% Student's group (task 3)
whatIsYourGroup(Student, Group) :- (
    group_1(Student), Group = group_1, !;
    group_2(Student), Group = group_2, !;
    group_3(Student), Group = group_3, !;
    write('There is not this available group.'), nl, fail, !
).