declare
n number:=&n;
a number:=0;
b number:=1;
c number;
d number;
begin
	c:=a+b;
	dbms_output.put('fibonic series is '||a||' '||b||' '||c||' ');
	for i in 4..n
	loop
	d:=b+c;
	dbms_output.put(d||' ');
	a:=b;
	b:=c;
	c:=d;
	end loop;
	dbms_output.new_line;
end;



	
	