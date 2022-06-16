create table Rooms
(
    rid           INT
        primary key,
    rNumber       INT          not null,
    buildingId    INT          not null
        references Buildings,
    size          FLOAT        not null,
    rDescription  VARCHAR(100) not null,
    numOfSoldiers integer,
    maxSoldiers   integer
);

INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2874, 0, 264, 20, 'Bedroom for 5 soldiers', 4, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (9283, 1, 264, 20, 'Bedroom for 5 soldiers', 1, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1034, 2, 264, 20, 'Bedroom for 5 soldiers', 5, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1234, 3, 264, 20, 'Bedroom for 5 soldiers', 3, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6142, 4, 264, 20, 'Bedroom for 5 soldiers', 2, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2523, 0, 823, 20, 'Bedroom for 5 soldiers', 0, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6324, 1, 823, 20, 'Bedroom for 5 soldiers', 4, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8246, 2, 823, 20, 'Bedroom for 5 soldiers', 2, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1543, 3, 823, 20, 'Bedroom for 5 soldiers', 3, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7432, 4, 823, 20, 'Bedroom for 5 soldiers', 1, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6234, 0, 183, 100, 'Meat kitchen', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7632, 1, 183, 100, 'Dairy kitchen', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2345, 0, 352, 40, 'M16 storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7242, 1, 352, 50, 'Gun storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7343, 2, 352, 50, 'M4 storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2142, 4, 234, 20, 'Tool storage room - warehouse a', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2353, 4, 234, 20, 'Range storage equipment room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (4624, 4, 234, 20, 'Range storage equipment room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2352, 4, 234, 20, 'Emergency food storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8734, 0, 345, 50, 'Hospital room A', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7345, 1, 345, 50, 'Hospital room B', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6245, 5, 264, 20, 'Bedroom for 5 soldiers', 5, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3422, 6, 264, 20, 'Bedroom for 5 soldiers', 5, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5323, 7, 264, 20, 'Bedroom for 5 soldiers', 5, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5431, 8, 264, 20, 'Bedroom for 5 soldiers', 4, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5435, 9, 264, 20, 'Bedroom for 5 soldiers', 1, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1232, 10, 264, 20, 'Bedroom for 5 soldiers', 2, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7364, 11, 264, 20, 'Bedroom for 5 soldiers', 3, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2467, 12, 264, 20, 'Bedroom for 5 soldiers', 0, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1356, 13, 264, 20, 'Bedroom for 5 soldiers', 3, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1235, 14, 264, 20, 'Bedroom for 5 soldiers', 1, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2356, 15, 264, 20, 'Bedroom for 5 soldiers', 4, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6345, 16, 264, 20, 'Bedroom for 5 soldiers', 3, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3461, 17, 264, 20, 'Bedroom for 5 soldiers', 3, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3563, 18, 264, 20, 'Bedroom for 5 soldiers', 2, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5235, 19, 264, 20, 'Bedroom for 5 soldiers', 1, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3243, 3, 352, 50, 'M4 Ammunition storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (4325, 4, 352, 50, 'M16 Ammunition storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (4345, 5, 352, 50, 'Gun Ammunition storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2343, 6, 352, 50, 'Tank Ammunition storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1242, 7, 352, 50, 'Pomegranate storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1245, 8, 352, 50, 'Bomb storage room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3534, 2, 345, 40, 'Medication room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1523, 3, 345, 40, 'Bandage room and related equipment', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8274, 4, 345, 40, 'Emergency operating room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3434, 5, 345, 30, 'Space equipment room', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8765, 0, 837, 200, 'Rookie dining room A', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8242, 1, 837, 200, 'Rookie dining room B', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8273, 2, 837, 200, 'Rookie dining room C', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (9833, 3, 837, 200, 'Commander dining room A', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (9274, 4, 837, 200, 'Commander dining room B', null, null);
