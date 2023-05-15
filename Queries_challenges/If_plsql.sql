declare
 
 num number(3);
begin


num:=&val;
if num mod 2 = 0 then
	dbms_output.put_line('EVEN');
ELSIF num mod 2 != 0 then
		DBMS_OUTPUT.PUT_LINE('ODD');
	
end if;

end;
/