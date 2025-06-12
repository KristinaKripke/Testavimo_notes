
-- Nauja lentele
select * from film;

create table if not exists my_film as (
	select * from film
);
select * from my_film;


-- Lentele, kurios nesimato
create temporary table if not exists my_film_tmp as (
	select * from film
);

select * from my_film_tmp;


-- INSERT INTO
select max(film_id) from my_film_tmp;

insert into my_film_tmp(film_id, title)
values (1001, 'Some title 01'),
		(1002, 'Some title 02'),
		(null, 'Some title 03');

select * from my_film_tmp
where film_id > 1000;

insert into my_film_tmp(film_id, title)
values ((select max(film_id) from my_film_tmp) +1, 'Some title');

select * from my_film_tmp
where film_id > 1000 or film_id is null;

-- UPDATE TABLE
select * from my_film_tmp
where film_id > 1000 or film_id is null;

alter table my_film_tmp
	alter column film_id type bigint;

select film_id from my_film_tmp;

alter table my_film_tmp
	rename column title to new_title;

select * from my_film_tmp;

select * from my_film_tmp
where film_id is null;

alter table my_film_tmp
	alter column film_id drop not null;

select film_id from my_film_tmp;

delete from my_film_tmp
where film_id is null;

select * from my_film_tmp
where film_id > 1000 or film_id is null;

