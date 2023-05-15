create or replace procedure plpro(dn in varchar2) as

total number(6);
begin

if dn='SALESMAN' then
  select floor(sum(sal)*0.05) into total from emp where job='SALESMAN';
  dbms_output.put_line('TOTAL DONATION BY '|| dn ||' is '||total);
  
elsif dn='CLERK' then
select sum(sal)*0.05 into total from emp where job='CLERK';
  dbms_output.put_line('TOTAL DONATION BY '|| dn ||' is '|| total );
 

elsif dn='ANALYST' then
select sum(sal)*0.08 into total from emp where job='ANALYST';
  dbms_output.put_line('TOTAL DONATION BY '|| dn ||' is '|| total );


elsif dn='MANAGER' then
select sum(sal)*0.08 into total from emp where job='MANAGER';
  dbms_output.put_line('TOTAL DONATION BY '|| dn ||' is '|| total );


elsif dn='PRESIDENT' then
select sum(sal)*0.11 into total from emp where job='PRESIDENT';
  dbms_output.put_line('TOTAL DONATION BY '|| dn ||' is '|| total );  


end if;


end;
/