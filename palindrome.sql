declare
n number:=&n;
rev number:=0;
temp number;
rem number;
begin
	temp:=n;
	while n>0 loop
	rem:=mod(n,10);
	rev:=rev*10+rem;
	n:=trunc(n/10);
	end loop;
	if rev=temp
	then
	DBMS_OUTPUT.PUT_LINE(temp||'='||rev||' '||'is a palindrome');
	else
	DBMS_OUTPUT.PUT_LINE(temp||'!='||rev||' '||'is not a palindrome');
	end if;
end;