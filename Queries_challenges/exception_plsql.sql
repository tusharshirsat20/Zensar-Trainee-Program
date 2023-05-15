declare

vname emp.ename%type;
vsal emp.sal%type;

begin


select ename,sal into vname,vsal from emp where empno=&eno;
dbms_output.put_line(vname||'  '||vsal);

exception
 when no_data_found then
   dbms_output.put_line('Empno dont exists');
  when others then 
	dbms_output.put_line('exception occured');
end;
/