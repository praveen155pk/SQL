declare
a number:=&a;
b number:=&b;
lcm number;
gcd number;
a1 number:=a;
b1 number:=b;
begin
	while a<>b loop
		if a<b then
		b:=b-a;
		else
		a:=a-b;
	     end if;
	end loop;
gcd:=b;
lcm:=(a1*b1)/gcd;
insert into lg values(a1,b1,gcd,lcm);
dbms_output.put_line('GCD is '||gcd);
dbms_output.put_line('LCM is '||lcm);
end;
