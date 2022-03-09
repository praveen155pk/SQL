declare
	pid number:=&pid;
	f varchar(10);
begin
	chck(pid,f);
	if f is not null then
	dbms_output.put_line('the prod_id is '||f||' in item table');
	end if;
end;