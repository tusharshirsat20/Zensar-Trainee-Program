create or replace trigger updatestocktrig 
before update 
of stockprice
on stockmaster
for each row

--declare
--scode stockmaster.stockcode%type;
--sprice stockmaster.stockprice%type;

begin 

if updating then

--select :old.stockcode,:old.stockprice into scode,sprice from stockmaster where stockcode=''; 
insert into stockupdates values(seq1.nextval,:old.stockcode,:old.stockprice,sysdate);
end if;
end;
/