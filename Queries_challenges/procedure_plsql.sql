--USER DEFINED EXCEPTION CREATION


create or replace procedure greeting(eno number,fname in varchar2,lname in varchar2) as
 NegativeEmp EXCEPTION;
 name varchar2(15);
begin

if eno<0 then
	RAISE NegativeEmp;

else	
select ename into name from emp where empno=eno;	
dbms_output.put_line('welcome to stored procedures '||fname||' and '||lname);

end if;
EXCEPTION
 when NegativeEmp then
	dbms_output.put_line('Negative value!!!!');

end;
/

--create or replace procedure greetingout(fname out varchar2,fjob out varchar2) as
--begin

--select ename,job into fname,fjob from emp where ename='ADAMS';
--end;
--/

--declare two  bind variable in server using ----- variable name varchar2(10); variable job varchar2(10);  
---to execute ---  exec greetingout(:name,:job)----then print name  on next line print job  

