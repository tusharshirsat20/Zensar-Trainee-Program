declare

vempno emp.empno%type;
begin 
 
 dbms_output.put_line('enter emp no');
 vempno:=&empno;
 
update emp set sal=sal-1000 where job='MANAGER' and sal*12>15000 and empno=vempno; 


end;