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

INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (582, 'Passenger car', 'Mitsubishi', 261, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (432, 'Passenger car', 'Mitsubishi', 261, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (623, 'Passenger car', 'Mitsubishi', 261, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (125, 'Passenger car', 'Mitsubishi', 261, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (435, 'tank', 'Chariot Tank 4', 724, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (132, 'tank', 'Chariot Tank 4', 724, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (443, 'tank', 'Mitsubishi', 724, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (913, 'tank', 'Chariot Tank 4', 724, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (901, 'jeep', 'Operational Jeep', 725, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (301, 'jeep', 'Operational Jeep', 725, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (834, 'jeep', 'Jeep passengers', 725, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (835, 'plane', 'Easy plane', 726, '', null);
INSERT INTO Vehicles (vid, vType, vModel, buildingId, vDescription, maxWight) VALUES (836, 'helicopter', 'Evacuation helicopter', 727, '', null);
