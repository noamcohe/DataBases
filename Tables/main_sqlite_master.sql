create table sqlite_master
(
    type     text,
    name     text,
    tbl_name text,
    rootpage int,
    sql      text
);

INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Buildings', 'Buildings', 2, 'CREATE TABLE Buildings
(
    bid          INTEGER
        primary key autoincrement,
    bName        VARCHAR(25)  not null,
    position     VARCHAR(40)  not null,
    bDescription VARCHAR(100) not null
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'sqlite_sequence', 'sqlite_sequence', 3, 'CREATE TABLE sqlite_sequence(name,seq)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Duties', 'Duties', 4, 'CREATE TABLE Duties
(
    did          INT
        primary key,
    dName        VARCHAR(25)  not null,
    dDescription VARCHAR(100) not null
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_Duties_1', 'Duties', 5, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Equipment', 'Equipment', 6, 'CREATE TABLE Equipment
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
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'Equipment_Id_uindex', 'Equipment', 7, 'CREATE UNIQUE INDEX Equipment_Id_uindex
    on Equipment (Id)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Lending', 'Lending', 8, 'CREATE TABLE Lending
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
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Manufacturer', 'Manufacturer', 9, 'CREATE TABLE Manufacturer
(
    Id   integer  not null
        constraint Manufacturer_pk
            primary key autoincrement,
    Name nvarchar not null
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Rooms', 'Rooms', 10, 'CREATE TABLE Rooms
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
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_Rooms_1', 'Rooms', 11, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Soldiers', 'Soldiers', 12, 'CREATE TABLE Soldiers
(
    soldierId integer     not null
        constraint Soldiers_pk
            primary key autoincrement,
    slName    varchar(10) not null,
    Weight    double,
    sfName    VARCHAR(15),
    roomId    integer
        references Rooms,
    equId     integer,
    dutyId    integer
        references Duties
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Vehicles', 'Vehicles', 13, 'CREATE TABLE Vehicles
(
    vid          INT
        primary key,
    vType        VARCHAR(40)  not null,
    vModel       VARCHAR(25)  not null,
    buildingId   INT          not null
        references Buildings,
    vDescription VARCHAR(100) not null,
    maxWight     integer
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_Vehicles_1', 'Vehicles', 14, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('view', 'room-equipment', 'room-equipment', 0, 'CREATE VIEW "room-equipment" as
select *
from Rooms R
left outer join Soldiers S on R.rid = S.roomId
left outer join Lending L on S.soldierId = L.SoldierId
left outer join Equipment E on L.EquipmentId = E.Id
where DateOfReturn is null');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('view', 'building-equipment', 'building-equipment', 0, 'CREATE VIEW "building-equipment" as
select *
from Buildings B
left outer join Rooms R on B.bid = R.buildingId
left outer join Soldiers S on R.rid = S.roomId
left outer join Lending L on S.soldierId = L.SoldierId
left outer join Equipment E on L.EquipmentId = E.Id
where L.DateOfReturn is null');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('trigger', 'LendingTrigger', 'Lending', 0, 'CREATE TRIGGER LendingTrigger
    after insert
    on Lending
begin
 update Lending
     set EquipmentWeight = (select E.Weight from Equipment E where E.Id == EquipmentId)
    where EquipmentId = new.EquipmentId;
end');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('trigger', 'RoomMembersNumTrigger', 'Soldiers', 0, 'CREATE TRIGGER RoomMembersNumTrigger
    after insert
    on Soldiers
    when exists
        (select *
        from Rooms R join Soldiers S on R.rid = S.roomId
        where R.rid == new.roomId
        group by rid, maxSoldiers
        having count() > maxSoldiers)
begin
    select raise( ROLLBACK ,''There is not enough space in this room'');
end');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('view', 'work_soldiers_equipment', 'work_soldiers_equipment', 0, 'CREATE VIEW work_soldiers_equipment as
select *
from Soldiers S
left outer join Lending L on S.SoldierId = L.SoldierId
left outer join Equipment E on E.Id = L.EquipmentId
where L.DateOfReturn is null and E.worker is TRUE');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('view', 'dwork-sol-equipment', 'dwork-sol-equipment', 0, 'CREATE VIEW "dwork-sol-equipment" as
select *
from Soldiers S
left outer join Lending L2 on S.SoldierId = L2.SoldierId
left outer join Equipment E2 on E2.Id = L2.EquipmentId
where L2.DateOfReturn is null and E2.worker is FALSE');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('trigger', 'ReturningTrigger', 'Lending', 0, 'CREATE TRIGGER ReturningTrigger
    after insert
    on Lending
    for each row
begin
    select
           case
               when DateOfReturn < DateOfLending then
                   raise(abort, ''invalid Returning date. this date is smaller than DateOfLending'')
               end;
end');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('trigger', 'MinStockTrigger', 'Equipment', 0, 'CREATE TRIGGER MinStockTrigger
    after update
    on Equipment
    for each row
begin
    select
           case
               when MinOfStack > Amount then
                   raise(abort, ''There is not enough from this product.'')
               end;
end');
