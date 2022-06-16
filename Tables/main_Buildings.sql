create table Buildings
(
    bid          INTEGER
        primary key autoincrement,
    bName        VARCHAR(25)  not null,
    position     VARCHAR(40)  not null,
    bDescription VARCHAR(100) not null
);

INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (103, 'building', 'East', 'A building for 100 soldiers');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (153, 'Storage b', 'Northeastern', 'A building where equipment is stored');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (154, 'Storage c', 'Northwest', 'A building where equipment is stored');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (155, 'Storage d', 'Southwest', 'A building where equipment is stored');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (183, 'kitchen', 'East near to the dining room', 'A building where the cooks prepare food');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (234, 'Storage a', 'Southeast', 'A building where equipment is stored');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (261, 'Parking', 'Central-Western', 'Parking building');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (264, 'building', 'west', 'A building for 100 soldiers');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (345, 'clinic', 'Northwest', 'A building where the doctor is');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (352, 'Arms a', 'Northwest', 'A building where the soldiers deposit and take their weapons');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (353, 'Arms b', 'Southeast', 'A building where equipment is stored');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (724, 'Tank parking', 'Central-South', 'Parking building');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (725, 'Jeep parking', 'Central-South', 'Hangar Jeeps');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (726, 'Plane parking', 'Southwest', 'Airplane hangar');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (727, 'Helicopter Landing Pad', 'Northeastern near the clinic', '');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (823, 'building', 'northern', 'A building for 100 soldiers');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (837, 'Dining Room', 'East near to the kitchen', 'A building where all the people at the base eat');
INSERT INTO Buildings (bid, bName, position, bDescription) VALUES (923, 'building', 'south', 'A building for 100 soldiers');
