create trigger MinStockTrigger
    after insert
    on Lending
    for each row
begin
    select
           case
               when DateOfReturn < DateOfLending then
                   raise(abort, 'invalid Returning date. this date is smaller than DateOfLending')
               end;
end;


insert into Lending (DateOfLending, DateOfReturn) values ('')