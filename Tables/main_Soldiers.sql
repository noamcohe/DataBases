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

INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (1245, 'לוק', null, 'ידידאל', 9283, 30284, 9248);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (2432, 'אמסלם', null, 'בניה', 2874, 91832, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (2842, 'אברהמוביץ', null, 'יעקב', 2874, 82741, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (3253, 'בן יאשיהו', null, 'צדקיהו', 9283, 39374, 1903);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (3463, 'סויקיס', null, 'שחר', 9283, 45644, 9743);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (4362, 'ויצמן', null, 'אורין', 6142, 10284, 7362);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (5332, 'אסייג', null, 'אברהם', 2874, 42942, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6333, 'מדרי', null, 'פרץ', 9283, 23435, 9743);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6342, 'בן גר', null, 'שמריה', 2523, 26472, 6295);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6524, 'דוידוב', null, 'עוז', 6142, 38487, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6622, 'אליחי', null, 'אבישי', 6142, 19372, 7362);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (6643, 'הרנברג', null, 'איתמר', 6142, 83021, 7362);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7434, 'בן גר', null, 'אבטליון', 2523, 83743, 1453);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7446, 'בן יוסף', null, 'רבא', 2523, 39283, 9734);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7454, 'בן רמי', null, 'אמימר', 2523, 34252, 9734);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (7543, 'בקשי', null, 'שמריהו', 6142, 29838, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (8342, 'אטיאס', null, 'רחמים', 2874, 28413, 4735);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (8734, 'היהודי', null, 'מרדכי', 9283, 29482, 1903);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9273, 'בן שמעון', null, 'הלל', 2523, 48274, 1453);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9284, 'abc', null, null, 2874, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9285, 'abc', null, null, 2874, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9286, 'abc', null, null, 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9287, 'abc', null, null, 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9288, 'abc', null, null, 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9292, 'aaa', null, null, 7432, null, null);
INSERT INTO Soldiers (soldierId, slName, Weight, sfName, roomId, equId, dutyId) VALUES (9293, 'aaa', null, null, 7432, null, null);
