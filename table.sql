declare
n number:=&n;
i number;
begin
	dbms_output.put_line('TABlE');
	for i in 1..10
	loop
	dbms_output.put_line(n||'x'||i||'= '||n*i);
	end loop;
end;