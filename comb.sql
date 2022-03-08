create or replace function comb(n number,r number)
return number as i number;
res number;
begin
	res:=fact(n)/(fact(n-r)*fact(r));
return res;
end;