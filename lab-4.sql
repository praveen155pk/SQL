create or replace trigger auditt after update or
delete on persinfo for each row
declare
	eno number;
	ename varchar(15);
	eage number;
	op varchar(15);
begin
	if updating then op:='update';
	elsif deleting then op:='delete';
	end if;
	eno:=old.empno;
	ename:=old.name;
	eage:=old.age;
	insert into auditpersinfo
	values(eno,ename,eage,op,sysdate);
end;