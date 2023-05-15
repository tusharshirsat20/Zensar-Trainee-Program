declare

vname emp.ename%type;
vsal emp.sal%type;
cursor emp_cursor(minsal number,maxsal number) is
select ename,sal from emp where sal between minsal and maxsal;
rowrecord emp_cursor%rowtype;

begin 
 
   open emp_cursor(1000,5000);
   loop
		fetch emp_cursor into vname,vsal;
		fetch emp_cursor into rowrecord;
		exit when emp_cursor%notfound;
		dbms_output.put_line(vname||'  '||vsal);
		dbms_output.put_line(rowrecord.ename||'  '||rowrecord.sal);

	end loop;
	close emp_cursor;	


end;
/