declare 
num number(3);
total number(3);
flag number(2);
begin

flag:=0;
for num in 1..50
  loop
		for i in 2..10
			loop
				if num mod i=0 then
				flag:=1;
				end if;
			end loop;
	if flag=0 then		
		dbms_output.put_line(' '||num);
	end if;
	flag:=0;
  end loop;
end;
/