create table Soldiers
(
    soldierId integer     not null
        constraint Soldiers_pk
            primary key autoincrement,
    slName    varchar(10) not null,
    Weight    double,
    sfName    VARCHAR(15),
    roomId    integer
        references Rooms,
    equId     integer,
    dutyId    integer
        references Duties
);

INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (1245, 'Look', null, 'Yedidel', 9283, 30284, 9248);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (2432, 'Amsalem', null, 'Benaya', 2874, 91832, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (2842, 'Avrahamovich', null, 'Jakob', 2874, 82741, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (3253, 'Ben Yoshiyahu', null, 'Tzidkiyahu', 9283, 39374, 1903);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (3463, 'Sukenik', null, 'Shahar', 9283, 45644, 9743);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (4362, 'Wicman', null, 'Orin', 6142, 10284, 7362);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (5332, 'Assyag', null, 'Avraham', 2874, 42942, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6333, 'Madri', null, 'Peretz', 9283, 23435, 9743);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6342, 'Ben Ger', null, 'Shimriya', 2523, 26472, 6295);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6524, 'Davidov', null, 'Oz', 6142, 38487, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6622, 'Elichai', null, 'Avishay', 6142, 19372, 7362);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6643, 'Herenberg', null, 'Itamar', 6142, 83021, 7362);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7434, 'Ben Ger', null, 'Avtalion', 2523, 83743, 1453);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7446, 'Ben Yosef', null, 'Rava', 2523, 39283, 9734);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7454, 'Ben Rami', null, 'Ameimar', 2523, 34252, 9734);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7543, 'Bakshi', null, 'Shimriyahu', 6142, 29838, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (8342, 'Atias', null, 'Rahamim', 2874, 28413, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (8734, 'Golan', null, 'Shahar', 9283, 29482, 1903);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9273, 'Ben Shimon', null, 'Hillel', 2523, 48274, 1453);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9284, 'Cohen', null, 'Noam', 2874, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9285, 'Bigel', null, 'Assaf', 2874, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9286, 'Hodaddi', null, 'Ron', 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9287, 'Taler', null, 'Saar', 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9288, 'Shulman', null, 'Eithan', 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9292, 'Kelerman', null, 'Zefanya', 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9293, 'Buchnik', null, 'Dan', 7432, null, null);
