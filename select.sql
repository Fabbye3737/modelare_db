select 2;
select 'Text for select';
select 2+2;
select 3>4; 
select NOW();

 SELECT * FROM ex3;

select nume from ex3;
select nume, carti_scrise from ex3;
select id, nume, sex, carti_scrise from ex3;

select *, id, nume, sex, carti_scrise from ex3;
select *, * from ex3;

select 'Ioana Oana', 4;
select 'Ioana Oana', 4+8;

select *, 4+5 from ex3;

select nume, 3/5 from ex3;

select nume, carti_scrise, 3%5 from ex3;

select nume, carti_scrise > 5 from ex3;

select nume, carti_scrise > 5 as "peste_5" from ex3;

select nume, carti_scrise > 5 "peste_5" from ex3;

select nume as "Nume", carti_scrise as "Carti_scrise" from ex3;

select * from ex3 as a;

select * from ex3 as "ex3";

select a.nume, a.sex from ex3 as a;

select * from adresa where id >4;

select * from adresa;

select * from adresa where ex3_id=4;

select * from adresa where ex3_id=4 and casa_bloc='C';

select * from adresa where casa_bloc='B';

select distinct nume from ex3;

select * from ex3 where nume LIKE 'Popescu Ion';
select * from ex3 where not nume = 'Popescu Ion';

select * from ex3 where nume LIKE '%escu%';

select * from ex3 where NOT nume LIKE '%Ion%';
select * from ex3 where nume LIKE '%Ion';
select * from ex3 where nume LIKE '%scu';
select * from ex3 where nume LIKE '%Mag%';