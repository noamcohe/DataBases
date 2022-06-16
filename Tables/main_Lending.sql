create table Lending
(
    SoldierId       integer not null
        references Soldiers,
    EquipmentId     integer not null
        references Equipment,
    DateOfLending   DATE,
    EquipmentWeight float
        constraint Lending_Equipment_Weight_fk
            references Equipment (Weight),
    DateOfReturn    DATE
);

INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 12345, '1640995200000', 38, '1654041600000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (3253, 93847, '1647043200000', 10, '1644883200000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (8342, 54321, '1649808000000', 2.5, '1647907200000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (3253, 10293, '1644969600000', 15, '1655856000000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (8342, 64648, '1642118400000', 2, '1655596800000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9292, 65757, '1652572800000', 0.2, '1201046400000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9284, 54321, '1639353600000', 2.5, '1670889600000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9293, 64648, '1656547200000', 2, '1666656000000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9293, 10293, '1497484800000', 15, '1655683200000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (8342, 10293, '1474502400000', 15, '1474675200000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9286, 10293, '1497744000000', 15, '1655251200000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (7543, 10293, '1525910400000', 15, '1654560000000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (6643, 64648, '1329955200000', 2, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9284, 10293, '1656288000000', 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (4362, 10293, '1445904000000', 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (9292, 10293, '1656288000000', 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (4362, 12345, '1308787200000', 38, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (6622, 34257, '1226620800000', 1, null);
