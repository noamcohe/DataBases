create table Vehicles
(
    vid          INT
        primary key,
    vType        VARCHAR(40)  not null,
    vModel       VARCHAR(25)  not null,
    buildingId   INT          not null
        references Buildings,
    vDescription VARCHAR(100) not null,
    maxWight     integer
);

INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (582, 'רכב נוסעים', 'מיצובישי אטראז', 261, 'רכב של מפקד הבסיס', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (432, 'רכב נוסעים', 'מיצובישי אטראז', 261, 'רכב של מפקד פלוגה', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (623, 'רכב נוסעים', 'מיצובישי אטראז', 261, 'רכב של מפקד פלוגה', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (125, 'רכב נוסעים', 'מיצובישי אטראז', 261, 'רכב חירום לנסיעה דחופה', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (435, 'טנק', 'טנק מרכבה 4', 724, 'רכב של צוות בטנק', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (132, 'טנק', 'טנק מרכבה 4', 724, 'רכב של צוות בטנק', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (443, 'טנק', 'מיצובישי אטראז', 724, 'רכב של צוות בטנק', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (913, 'טנק', 'טנק מרכבה 4', 724, 'רכב של צוות בטנק', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (901, 'גיפ', 'גיפ מבצעי', 725, 'גיפ של נסיעות מבצעיות', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (301, 'גיפ', 'גיפ מבצעי', 725, 'גיפ של נסיעות מבצעיות', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (834, 'גיפ', 'גיפ נוסעים', 725, 'גיפ של נסיעות שאינם מבצעיות', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (835, 'מטוס', 'מטוס קל', 726, 'מטוס סיור', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (836, 'מסוק', 'מסוק פינוי', 727, 'מסוק חירום של המרפאה', null);
