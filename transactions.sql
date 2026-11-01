-- Rollback
begin; 
update Customers
set customer_name = 'Rahul updated'
where customer_id = 1; -- check customer name updated
rollback; -- check updates rolled back

-- Commit
begin;
update Customers
set customer_name = 'Rahul Sharma'
where customer_id = 1; -- check customer name updated
commit; -- check updates committed


