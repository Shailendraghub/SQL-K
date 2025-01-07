use sakila;
create view actor_view as 
select actor.actor_id,first_name,film_id
from actor join film_actor 
where actor.actor_id =film_actor.actor_id;

select * from actor_view;
select * from actor;
select * from film_actor;
select * from film;

create or replace view aview as
select a.actor_id,f.film_id,fm.title from actor as a join film_actor as f 
join film fm
where a.actor_id=f.actor_id and f.film_id=f.film_id;

select * from aview;

-- student name,age ,3 rows

create table studentinformation(student_id  int primary key,name varchar(20));
insert into studentinformation values(1,'shailendra'),(2,'rahul'),(3,'sam');

select * from studentinformation;

create view students as 
select student_id,name from studentinformation;
select * from students;


-- kisi bhi 1 row ko uodate 

UPDATE students SET name = 'akhil'WHERE name = 'shailendra';
-- simple  view -- orginal data me change bhi aata h 
select * from students;
select * from studentinformation;

create view students1 as 
select student_id,name from studentinformation;
select * from students;

create view students2 as 
select student_id, name from studentinformation group by student_id;


select * from students2;

select * from studentinformation;
-- complex view -- ddl and dml tassk not perform ..


UPDATE students2 SET name = 'akhil'WHERE name = 'shailendra';

create view students4 as 
select student_id,name from studentinformation with check option;

select * from students4;
UPDATE students4 SET name = 'shailendra'WHERE name = 'akhil';

select * from students4;

select round(15.5,2);


