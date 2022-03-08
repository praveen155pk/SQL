declare
	eid number:=&eid;
	res number;
begin
	res:=incr(eid);
	dbms_output.put_line('Incremented salary='||res|| ' of employee number'|| eid);
end;