employee(001, emp1, webdev, 100, 1).
employee(002, emp2, webdes, 140, 1).
employee(003, emp3, webdev, 130, 2).
employee(004, emp4, webdes, 110, 3).
employee(005, emp5, webdev, 230, 2).
employee(006, emp6, cppdev, 440, 2).
employee(007, emp7, cppdev, 170, 3).
employee(008, emp8, webdev, 210, 1).
employee(009, emp9, webdev, 210, 1).

marital_status(001, spouse1, 0).
marital_status(002, spouse2, 2).
marital_status(003, spouse3, 1).
marital_status(004, spouse4, 2).
marital_status(005, spouse5, 0).
marital_status(006, spouse6, 0).
marital_status(007, spouse7, 1).
marital_status(008, spouse8, 3).
marital_status(009, spouse9, 3).

% 1
familiarWith(First, Second) :- (
    employee(_, First, _, _, Sect1),
    employee(_, Second, _, _, Sect2),
    Sect1 is Sect2
).

% 2
areSpouseFamiliar(Emp1, Emp2) :- (
    employee(Em1Num, Emp1, _, _, Sect1),
    employee(Em2Num, Emp2, _, _, Sect2),
    Sect1 is Sect2,
    marital_status(Em1Num, Spouse1, _),
    marital_status(Em2Num, Spouse2, _),
    not(Spouse1 = Spouse2)
).

% 3.1
getAllFromSection1(Empls) :- (
    employee(_, Empls, _, _, 1)
).

% 3.2
salaryMoreThan(Count, Empls) :- (
    employee(_, Empls, _, Salary, _),
    Count > Salary
).

% 3.3
getAllWhoHasKidsMoreThan1(Empls) :- (
    marital_status(EmpNumber, _, KidsCount),
    KidsCount > 1,
    employee(EmpNumber, Empls, _, _, _)
).
