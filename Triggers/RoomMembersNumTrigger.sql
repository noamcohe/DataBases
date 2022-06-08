create trigger RoomMembersNumTrigger
    after insert
    on Soldiers
    when exists
        (select *
        from Rooms R join Soldiers S on R.rid = S.roomId
        where R.rid == new.roomId
        group by rid, maxSoldiers
        having count() > maxSoldiers)
begin
    select raise( ROLLBACK ,'There is not enough space in this room');
end;

insert into Soldiers (slName, roomId) values ('aaa', 7432);