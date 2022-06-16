create table Equipment
(
    Id             integer not null
        constraint Equipment_pk
            primary key autoincrement,
    Name           varchar,
    ManufacturerId integer default -1 not null
        references Manufacturer,
    MinOfStack     integer default 10 not null,
    Amount         integer default 0 not null,
    Weight         float   default -1,
    worker         Boolean default TRUE not null,
    roomId         integer
        references Rooms,
    eDescription   VARCHAR,
    cost           float,
    onVehicleId    integer
        references Vehicles,
    area           float
);

create unique index Equipment_Id_uindex
    on Equipment (Id);

INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (10293, 'Grenade launcher', 231, 30, 12, 15, 1, 103, null, 6, null, 200);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (12345, 'Machine gun', 231, 20, 34, 38, 1, 261, null, 5, null, 100);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (34257, 'Ghillie suit', 724, 50, 49, 1, 1, 345, null, 5, null, 500);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (54321, 'Tripod', 593, 30, 48, 2.5, 0, 923, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (64648, 'gun', 231, 100, 76, 2, 1, 264, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (65748, 'Helmet', 859, 100, 45, 0.5, 1, 725, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (65757, 'binoculars', 231, 120, 100, 0.2, 0, 234, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (67849, 'mine', 231, 800, 657, 5, 1, 724, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (75758, 'sniper''s rifle', 724, 30, 38, 3.2, 1, 353, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (85750, 'telescopic sight', 478, 30, 15, 0.5, 0, 353, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (85757, 'Bullets pack', 231, 100, 150, 0.8, 1, 353, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (85874, 'vests', 859, 100, 123, 1.5, 1, null, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (87969, 'Night-vision device', 511, 80, 67, 0.4, 1, null, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (93847, 'Shoulder rocket', 231, 300, 286, 10, 0, null, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (96856, 'uniform set', 490, 100, 88, 2, 1, 353, null, 5, null, null);
INSERT INTO Equipment (Id, Name, ManufacturerId, MinOfStack, Amount, Weight, worker, roomId, eDescription, cost, onVehicleId, area) VALUES (98765, 'Headphones silence noises', 859, 100, 230, 0.6, 0, null, null, 5, null, null);
