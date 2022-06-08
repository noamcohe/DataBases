create table sqlite_master
(
    type     text,
    name     text,
    tbl_name text,
    rootpage int,
    sql      text
);

INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Duties', 'Duties', 2, 'CREATE TABLE Duties(
    did INT PRIMARY KEY ,
    dName VARCHAR(25) NOT NULL ,
    dDescription VARCHAR(100) NOT NULL
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_Duties_1', 'Duties', 3, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Rooms', 'Rooms', 6, 'CREATE TABLE Rooms(
    rid INT PRIMARY KEY ,
    rNumber INT NOT NULL ,
    buildingId INT NOT NULL ,
    size FLOAT NOT NULL ,
    rDescription VARCHAR(100) NOT NULL , numOfSoldiers integer, maxSoldiers integer,

    FOREIGN KEY (buildingId) REFERENCES Buildings(bid)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_Rooms_1', 'Rooms', 7, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Vehicles', 'Vehicles', 8, 'CREATE TABLE Vehicles(
    vid INT PRIMARY KEY ,
    vType VARCHAR(40) NOT NULL ,
    vModel VARCHAR(25) NOT NULL ,
    buildingId INT NOT NULL ,
    vDescription VARCHAR(100) NOT NULL , maxWight integer,

    FOREIGN KEY (buildingId) REFERENCES Buildings(bid)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_Vehicles_1', 'Vehicles', 9, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Manufacturer', 'Manufacturer', 12, 'CREATE TABLE Manufacturer
(
    Id   integer  not null
        constraint Manufacturer_pk
            primary key autoincrement,
    Name nvarchar not null
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'sqlite_sequence', 'sqlite_sequence', 13, 'CREATE TABLE sqlite_sequence(name,seq)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Equipment', 'Equipment', 14, 'CREATE TABLE "Equipment"
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
        constraint onVehicle
            references Vehicles
, area float)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'Equipment_Id_uindex', 'Equipment', 10, 'CREATE UNIQUE INDEX Equipment_Id_uindex
    on Equipment (Id)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Lending', 'Lending', 15, 'CREATE TABLE "Lending"
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
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Buildings', 'Buildings', 17, 'CREATE TABLE "Buildings"
(
    bid          INTEGER
        primary key autoincrement,
    bName        VARCHAR(25)  not null,
    position     VARCHAR(40)  not null,
    bDescription VARCHAR(100) not null
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'Soldiers', 'Soldiers', 4, 'CREATE TABLE "Soldiers"
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
        constraint duty
            references Duties
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('trigger', 'LendingTriger', 'Lending', 0, 'CREATE TRIGGER LendingTriger
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
