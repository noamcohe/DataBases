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

INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (102938475, 12345, '1.1.22', 38, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (123456789, 93847, '12.3.22', 10, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (564738291, 54321, '13.4.22', 2.5, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (657438920, 10293, '16.2.22', 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (918273645, 64648, '14.1.22', 2, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (987654321, 65757, '15.5.22', 0.2, '1654646400000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (102938475, 54321, '13.12.21', 2.5, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 64648, null, 2, '1654646400000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 10293, null, 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (8734, 10293, null, 15, '1654646400000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (6524, 10293, null, 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (7446, 10293, null, 15, '1654560000000');
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 64648, null, 2, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (8734, 10293, null, 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (7446, 10293, null, 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 10293, null, 15, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 12345, null, 38, null);
INSERT INTO Lending (SoldierId, EquipmentId, DateOfLending, EquipmentWeight, DateOfReturn) VALUES (1245, 34257, null, 1, null);
