create table Duties
(
    did          INT
        primary key,
    dName        VARCHAR(25)  not null,
    dDescription VARCHAR(100) not null
);

INSERT INTO Duties (did, dName, dDescription) VALUES (7362, 'Cook', 'In charge of make food');
INSERT INTO Duties (did, dName, dDescription) VALUES (9248, 'quartermaster', 'In charge of storage');
INSERT INTO Duties (did, dName, dDescription) VALUES (9743, 'Mashak', 'A commander who is not an officer');
INSERT INTO Duties (did, dName, dDescription) VALUES (1903, 'commander', 'Officer Commander');
INSERT INTO Duties (did, dName, dDescription) VALUES (1453, 'Medic', 'Base Medic');
INSERT INTO Duties (did, dName, dDescription) VALUES (6295, 'doctor', 'Base doctor');
INSERT INTO Duties (did, dName, dDescription) VALUES (9734, 'In charge of weapons', '');
INSERT INTO Duties (did, dName, dDescription) VALUES (4245, 'Tank driver', '');
INSERT INTO Duties (did, dName, dDescription) VALUES (8274, 'Jeep driver', '');
INSERT INTO Duties (did, dName, dDescription) VALUES (3536, 'Base Commander', '');
INSERT INTO Duties (did, dName, dDescription) VALUES (4735, 'rookie', '');
