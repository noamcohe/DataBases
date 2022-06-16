create table Buildings
(
    bid          INTEGER
        primary key autoincrement,
    bName        VARCHAR(25)  not null,
    position     VARCHAR(40)  not null,
    bDescription VARCHAR(100) not null
);

INSERT INTO Buildings (bName, position, bDescription) VALUES ('בניין מגורים', 'איזור מזרחי', 'בניין שבו ישנים 100 חיילים');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מחסן ב', 'איזור צפוני מזרחי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מחסן ג', 'איזור צפוני מערבי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מחסן ד', 'איזור דרומי מערבי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מטבח', 'איזור מזרחי צמוד לחדר אוכל', 'בניין שבו הטבחים מכינים את האוכל');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מחסן א', 'איזור דרומי מזרחי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('חנייה רכבים', 'איזור מרכזי מערבי', 'בניין שבו חונים את כלי הרכב של הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('בניין מגורים', 'איזור מערבי', 'בניין שבו ישנים 100 חיילים');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מרפאה', 'איזור צפוני מערבי', 'בניין שבו נמצא רופא הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('נשקייה א''', 'איזור צפוני מערבי', 'בניין שבו החיילים מפקידים ולוקחים את נשקם');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('נשקייה ב', 'איזור דרומי מזרחי', 'בניין שבו מאחסנים ציוד עבור אנשי הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('חנייה טנקים', 'איזור מרכזי דרומי', 'בניין שבו חונים את כלי הרכב של הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('חניית גיפים', 'איזור מרכזי דרומי', 'האנגר גיפים');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('חניית מטוס', 'איזור דרומי מערבי', 'האנגר למטוס של הבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('מנחת מסוקים', 'איזור צפוני מזרחי(ליד המרפאה)', 'מנחת למסוק החירום של המרפאה');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('בניין מגורים', 'איזור צפוני', 'בניין שבו ישנים 100 חיילים');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('חדר אוכל', 'איזור מזרחי צמוד למטבח', 'בניין שבו אוכלים כלל האנשים בבסיס');
INSERT INTO Buildings (bName, position, bDescription) VALUES ('בניין מגורים', 'איזור דרומי', 'בניין שבו ישנים 100 חיילים');
