create trigger ReturningTrigger
    before insert
    on Lending
    for each row
begin
    select
           case
               when DateOfReturn < DateOfLending then
                   raise(abort, 'invalid Returning date. this date is smaller than DateOfLending')
               end;
end;


insert into Lending (EquipmentId, SoldierId, DateOfLending, DateOfReturn) values (93847, 102938475,DATE(1647043200000), DATE(1647907200000))