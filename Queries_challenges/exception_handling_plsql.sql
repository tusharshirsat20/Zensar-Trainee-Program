create or replace procedure dowithdrawl(acno number,amt number) as

zeroexp EXCEPTION;
balance accounts_master.accbalance%type;

begin


select accbalance into balance from accounts_master where accno=acno;
 if balance < amt then
 raise zeroexp;
 
 else
 update accounts_master set accbalance=accbalance-amt where accno=acno;
 select accbalance into balance from accounts_master where accno=acno;
dbms_output.put_line('ACCOUNt BALANCE - '||balance);
end if;

exception
 when no_data_found then
   dbms_output.put_line('ACCOUNT NO. DOES NOT EXISTS !! ');
   
   when zeroexp then
    dbms_output.put_line('ACCOUNT NO. is insufficient ');



end; 
 