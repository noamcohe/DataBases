create table Duties
(
    did          INT
        primary key,
    dName        VARCHAR(25)  not null,
    dDescription VARCHAR(100) not null
);

INSERT INTO Duties (did, dName, dDescription) VALUES (7362, 'טבח', 'אחראי על הכנת אוכל לאנשים בבסיס');
INSERT INTO Duties (did, dName, dDescription) VALUES (9248, 'אפסני', 'אחראי על מחסן בבסיס');
INSERT INTO Duties (did, dName, dDescription) VALUES (9743, 'מש"ק', 'מפקד שאינו קצין, אחראי על הטבות לחיילים או על צוות חיילים');
INSERT INTO Duties (did, dName, dDescription) VALUES (1903, 'מפקד קצין', 'אחראי על מחלקה');
INSERT INTO Duties (did, dName, dDescription) VALUES (1453, 'חובש', 'אחראי על בריאות החיילים בכל פלוגה');
INSERT INTO Duties (did, dName, dDescription) VALUES (6295, 'רופא', 'אחראי על בריאות החיילים בבסיס');
INSERT INTO Duties (did, dName, dDescription) VALUES (9734, 'אחראי נשקייה', 'אחראי על הנשקייה של הבסיס');
INSERT INTO Duties (did, dName, dDescription) VALUES (4245, 'נהג טנק', 'חייל שיש לו רישיון לנהוג בטנק');
INSERT INTO Duties (did, dName, dDescription) VALUES (8274, 'נהג גיפ', 'חייל שיש לו רישיון לנהוג בגיפ');
INSERT INTO Duties (did, dName, dDescription) VALUES (3536, 'מפקד בסיס', 'חייל שהוא מפקד וקצין אשר מפקד על הבסיס');
INSERT INTO Duties (did, dName, dDescription) VALUES (4735, 'טירון', 'חייל טירון');
