create or replace trigger emptrig
before update
of sal
on emp
for each row    --row level trigger

begin
	dbms_output.put_line(' update trigger invoked '||' OLD salary was'||:old.sal||' NEW salary - '||:new.sal);	
end;
/


---alter trigger trig enable/disable
---drop trigger trig