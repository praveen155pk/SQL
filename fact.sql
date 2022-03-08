create or replace function fact(n number) 
return number as i number;
f number;
i number;
begin
	f:=1;
	for i in 1..n loop
	f:=f*i;
	end loop;
return f;
end;