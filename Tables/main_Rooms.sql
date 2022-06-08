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

INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2874, 0, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (9283, 1, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1034, 2, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1234, 3, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6142, 4, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2523, 0, 823, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6324, 1, 823, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8246, 2, 823, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1543, 3, 823, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7432, 4, 823, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6234, 0, 183, 100, 'איזור מטבח בשרי', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7632, 1, 183, 100, 'איזור מטבח חלבי', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2345, 0, 352, 40, 'חדר אחסון נשק M16', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7242, 1, 352, 50, 'חדר אחסון אקדחים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7343, 2, 352, 50, 'חדר אחסון M4', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2142, 4, 234, 20, 'חדר אחסון כלי עבודה מחסן א', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2353, 4, 234, 20, 'חדר אחסון ציוד מטווחים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (4624, 4, 234, 20, 'חדר אחסון ציוד מטווחים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2352, 4, 234, 20, 'חדר אחסון אוכל לשעת חירום', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8734, 0, 345, 50, 'חדר חולים א', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7345, 1, 345, 50, 'חדר חולים ב', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6245, 5, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3422, 6, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5323, 7, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5431, 8, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5435, 9, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1232, 10, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (7364, 11, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2467, 12, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1356, 13, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1235, 14, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2356, 15, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (6345, 16, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3461, 17, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3563, 18, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (5235, 19, 264, 20, 'חדר שינה של 5 חיילים', null, 5);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3243, 3, 352, 50, 'חדר אחסון תחמושת M4', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (4325, 4, 352, 50, 'חדר אחסון תחמושת M16', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (4345, 5, 352, 50, 'חדר אחסון תחמושת אקדחים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (2343, 6, 352, 50, 'חדר אחסון תחמושת טנקים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1242, 7, 352, 50, 'חדר אחסון רימונים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1245, 8, 352, 50, 'חדר אחסון פצצות', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3534, 2, 345, 40, 'חדר תרופות', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (1523, 3, 345, 40, 'חדר תחבושות וציוד נלווה', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8274, 4, 345, 40, 'חדר ניתוחי חירום', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (3434, 5, 345, 30, 'חדר ציוד שטח', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8765, 0, 837, 200, 'איזור א אכילת טירונים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8242, 1, 837, 200, 'איזור ב אכילת טירונים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (8273, 2, 837, 200, 'איזור ג אכילת טירונים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (9833, 3, 837, 200, 'איזור אכילת מפקדים', null, null);
INSERT INTO Rooms (rid, rNumber, buildingId, size, rDescription, numOfSoldiers, maxSoldiers) VALUES (9274, 4, 837, 200, 'איזור אכילת קצינים', null, null);
