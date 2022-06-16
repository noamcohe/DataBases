create trigger MinStockTrigger
    after update
    on Equipment
    for each row
begin
    select
           case
               when MinOfStack > Amount then
                   raise(abort, 'There is not enough from this product.')
               end;
end;