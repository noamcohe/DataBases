CREATE VIEW "dwork-sol-equipment" as
select *
from Soldiers S
left outer join Lending L2 on S.SoldierId = L2.SoldierId
left outer join Equipment E2 on E2.Id = L2.EquipmentId
where L2.DateOfReturn is null and E2.worker is FALSE;

