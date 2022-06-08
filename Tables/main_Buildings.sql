create table Buildings
(
    bid          INTEGER
        primary key autoincrement,
    bName        VARCHAR(25)  not null,
    position     VARCHAR(40)  not null,
    bDescription VARCHAR(100) not null
);

INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (103, 'בניין מגורים', 'איזור מזרחי', 'בניין שבו ישנים 100 חיילים');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (153, 'מחסן ב', 'איזור צפוני מזרחי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (154, 'מחסן ג', 'איזור צפוני מערבי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (155, 'מחסן ד', 'איזור דרומי מערבי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (183, 'מטבח', 'איזור מזרחי צמוד לחדר אוכל', 'בניין שבו הטבחים מכינים את האוכל');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (234, 'מחסן א', 'איזור דרומי מזרחי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (261, 'חנייה רכבים', 'איזור מרכזי מערבי', 'בניין שבו חונים את כלי הרכב של הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (264, 'בניין מגורים', 'איזור מערבי', 'בניין שבו ישנים 100 חיילים');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (345, 'מרפאה', 'איזור צפוני מערבי', 'בניין שבו נמצא רופא הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (352, 'נשקייה א''', 'איזור צפוני מערבי', 'בניין שבו החיילים מפקידים ולוקחים את נשקם');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (353, 'נשקייה ב', 'איזור דרומי מזרחי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (724, 'חנייה טנקים', 'איזור מרכזי דרומי', 'בניין שבו חונים את כלי הרכב של הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (725, 'חניית גיפים', 'איזור מרכזי דרומי', 'האנגר גיפים');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (726, 'חניית מטוס', 'איזור דרומי מערבי', 'האנגר למטוס של הבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (727, 'מנחת מסוקים', 'איזור צפוני מזרחי(ליד המרפאה)', 'מנחת למסוק החירום של המרפאה');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (823, 'בניין מגורים', 'איזור צפוני', 'בניין שבו ישנים 100 חיילים');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (837, 'חדר אוכל', 'איזור מזרחי צמוד למטבח', 'בניין שבו אוכלים כלל האנשים בבסיס');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (923, 'בניין מגורים', 'איזור דרומי', 'בניין שבו ישנים 100 חיילים');
