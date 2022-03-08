create or replace function incr(eid number) 
return number as s number;
inc number;
begin
	select sal into s from emp2 where empno=eid;
	if s>0 and s<=3000 then
	inc:=s*(0.3);
	elsif s>3000 and s<=6000 then
	inc:=s*(0.2);
	else
	inc:=s*(0.1);
	end if;
	return inc;
end;
