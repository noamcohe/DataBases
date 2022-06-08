create trigger LendingTrigger
    after insert
    on Lending
begin
 update Lending
     set EquipmentWeight = (select E.Weight from Equipment E where E.Id == EquipmentId)
    where EquipmentId = new.EquipmentId;
end;

INSERT INTO Lending (SoldierId, EquipmentId) VALUES(1245,65757);