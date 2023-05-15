
create or replace function avgsal(name varchar2) return number as
avgs number(7,2);
	
begin

	select avg(sal) into avgs from emp;
	return avgs;

end;
/

---function in procedure remaining