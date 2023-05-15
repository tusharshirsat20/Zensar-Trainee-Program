create or replace procedure transferfunds(acnofrom number,acnoto number,amt number) as

lowbalexp EXCEPTION;
negexp exception;
balance accounts_master.accbalance%type;

begin


select accbalance into balance from accounts_master where accno=acnofrom;
 if balance < amt then
 raise lowbalexp;
 elsif balance < 0 then
 raise negexp;
 end if;
 
 else
 update accounts_master set accbalance=accbalance-amt where accno=acnofrom;
 update accounts_master set accbalance=accbalance+amt where accno=acnoto;
 
 
select accbalance into balance from accounts_master where accno=acnoto;
dbms_output.put_line('NEW ACCOUNT BALANCE - '||balance);
end if;

exception
 when no_data_found then
   dbms_output.put_line('ACCOUNT NO. DOES NOT EXISTS !! ');
   
   when lowbalexp then
    dbms_output.put_line('Ammount balance for ACCOUNT no. - ' || acnofrom ||'is insufficient ');
	
	when negexp then
	  dbms_output.put_line('Ammount is negative ');


end; 
 /