create table Manufacturer
(
    Id   integer  not null
        constraint Manufacturer_pk
            primary key autoincrement,
    Name nvarchar not null
);

