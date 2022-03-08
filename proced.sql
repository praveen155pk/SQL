create or replace procedure pk(eid number)
is
s number;
incrm number;
exp1 exception;
begin
	select sal into s from emp2 where empno=eid;
	if s is null then
	  raise exp1;
	else
	   incrm:=incr(eid);
	end if;	
	update emp2 set sal=sal+s where empno=eid;
	dbms_output.put_line('sucesffully updated');
exception
	when no_data_found then
	dbms_output.put_line('enter valid empno');
	when exp1 then
	dbms_output.put_line('salary is null');
end;
	