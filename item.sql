create or replace procedure chck(pid in number,f out varchar)
as
pid1 item.prod_id%type;
begin
	select prod_id into pid1 from item where prod_id=pid;
	f:='found';
exception
	when NO_DATA_FOUND then 
	dbms_output.put_line('Not found in table');

	
end;

	
	