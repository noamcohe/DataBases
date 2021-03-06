-- (1) Select all products that almost out of the stock
select E.Id, E.Name, E.MinOfStack, E.Amount, M.Name as manufacturerName
from Equipment E
join Manufacturer M on M.Id = E.ManufacturerId
where Amount < E.MinOfStack;


-- (2) Select a list of all the products from a specific Manufacturer
select E.Id, E.Name
from Equipment E
join Manufacturer M on M.Id = E.ManufacturerId
where M.Id == :companyId;


-- (3) Select a list of all the products that a specific soldier ever took
select E.Id,
       E.Name
from Equipment E
join Lending L on E.Id = L.EquipmentId
left join Soldiers S on S.SoldierId = L.SoldierId
where S.soldierId == :soldierId;


-- (4) Select the weight of all the products that a specific soldier ever took
select sum(Lending.EquipmentWeight)
from Lending
join Soldiers S on Lending.SoldierId = S.SoldierId
where S.soldierId = :soldierId;


-- (5) Select a list of all soldiers that have equipment more than 40% from their weight
select S.SoldierId,
       s.slName,
       s.sfName,
       S.Weight,
       sum(E.Weight)

from Soldiers S natural join Lending L
left outer join Equipment E on L.EquipmentId = E.Id
group by S.SoldierId, S.Weight
having sum(E.Weight) > (S.Weight * 0.4);


-- (6) Select names list of all products
-- that lent more than 9 times (for maintenance)
select E.Name
from Equipment E
left outer join Lending L on E.Id = L.EquipmentId
group by E.Name
having count(L.EquipmentId) > 9;


-- (7) Name of the soldiers who have only work products
select SoldierId, sfName, slName
from "work_soldiers_equipment"
except
select SoldierId, sfName, slName
from "dwork-sol-equipment"
group by SoldierId, sfName, slName;


-- (8) Select a list of all the products that doesn't work
select E.Id,
       E.Name,
       E.worker
from Equipment E
where E.worker == FALSE;


-- (9) Select a list of all soldiers who have a product that doesn't work
select S.SoldierId,
       S.sfName,
       s.slName
from Soldiers S natural join Lending L
left join Equipment E on E.Id = L.EquipmentId
where L.EquipmentId == E.Id and E.worker == FALSE;


-- (10) select a list of all building,
-- and the cost of the equipment that the soldiers who live in this building are lent
-- (for the building safety)
select bid, sum (cost)
from "building-equipment"
group by bid;


-- (11) select all vehicles that hold more heavy equipment than they can
select V.vid, V.maxWight, sum (E.Weight)
from Vehicles V  join Equipment E on V.vid = E.onVehicleId
group by V.vid, V.maxWight
having sum (E.Weight) > V.maxWight;


-- (12) select each room that "hold" more bigger equipment than 1/4 of their size
select  rid, size, sum(area)
from "room-equipment"
group by rid, size
having sum(area) > size/4;


-- (13) select all soldiers that have a gun, and their duty
-- (to confirm that they really need a gun)
select s.soldierId, s.sfName, s.sfName, D.dName, D.dDescription
from Lending L join Equipment E on E.Id = L.EquipmentId
join Soldiers S on S.soldierId = L.SoldierId
left outer join Duties D on S.dutyId = D.did
where E.Name == 'gun';


-- (14) select all rooms with the duties of its soldiers
select R.rid, D.dName,D.dDescription
from Rooms R join Soldiers S on R.rid = S.roomId
join Duties D on D.did = S.dutyId
order by R.rid, D.dName;


-- (15) The most expensive product
select E.Id,
       E.Name,
       E.cost
from Equipment E
where cost = (select max(cost) from Equipment);


-- (16) List of all manufacturers that have an equipment,
-- that are exist right now in one of the rooms
select M.Id,
       M.Name,
       count(M.Id)
from Manufacturer M
left join Equipment E on M.Id = E.ManufacturerId
where roomId is not null
group by M.Id, M.Name;