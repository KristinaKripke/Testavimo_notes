-- KOMENTARAS
/* 
Komentaras
*/
-- SELECT, FROM:

	select 'sveikas', 'pasauli';
	SELECT 'hello', 'world';

	select 'sveikas', 'pasauli', null
	union
	SELECT 'hello', 'world', 'antradienis'
	union
	SELECT 'bonjour', 'la', 'monde';


	select * from actor;

	select first_name as Vardas, last_name from actor;
	select first_name, last_name "Pavarde" from actor;

	select first_name, LOWER(first_name) Vardas, UPPER(last_name) "Pavarde" from actor;

-- WHERE

	select * from country;
	select * from country where country = 'Lithuania';
	select * from country where country = 'France';
	select * from country where country = 'Lithuania' or country = 'France';
	
	select * from country where country = 'Lithuania'
	union
	select * from country where country = 'France';

	select * from city where country_id = 56;
	select * from city where country_id = 103;

	select * from city where country_id = (select country_id from country where country = 'France');

	/*
    Logical operators
    >, <, >=, <=, =, <> or !=
 
    AND, OR
    &&, ||
*/

 SELECT * FROM city
    WHERE country_id = 103 AND city_id >= 400 AND city_id <= 499
	order by city_id desc;

select country_id, city_id, city from city
	order by 1 desc;

-- BETWEEN AND 
	select country_id, city_id, city from city
	WHERE country_id = 103 AND city_id between 400 and 499;

	select country_id, city_id, city from city
    WHERE country_id = 103 AND (city_id < 400 or city_id > 499);

	select country_id, city_id, city from city
	WHERE country_id = 103 AND city_id not between 400 and 499;

-- IN()

	select * from city where country_id = 103;
	
	select * from city where country_id = 103 and city_id in(33, 42, 94, 435, 508);
	select * from city where country_id = 103 and city_id not in(33, 42, 94, 435, 508);

-- LIKE 

	select * from city where city like 'W%';
	select * from city where city like '%s';
	select * from city where city like '% %';
	select * from city where city like '% %' and city not like '% % %';
	select * from city where city like '_a%';
	select * from city where city like '%e__';

/*
	Agregation functions:
	count(), min(), max(), sum(), avg()
*/
	select count(city_id) from city where country_id = 103;
	select count(city_id), min(city_id), max(city_id), sum(city_id), avg(city_id) from city where country_id = 103;
	
	select * from film;
	
	select rating, rental_duration, count(*), min(replacement_cost) from film 
	group by rating, rental_duration 
	order by rating desc, rental_duration desc;

	SELECT 
		rating, 
		rental_duration, 
		count(*), 
		min(replacement_cost),
		max(replacement_cost),
		max(replacement_cost) - min(replacement_cost) AS "diference"
	FROM film 
	GROUP BY rating, rental_duration 
	ORDER BY rating DESC, rental_duration DESC;
 
-- HAVING

	SELECT 
		rating, 
		count(*) AS total_count, 
		min(replacement_cost),
		max(replacement_cost),
		max(replacement_cost) - min(replacement_cost) AS "diference",
		rental_duration 
	FROM film
	WHERE title like 'A%'
	-- GROUP BY rating, rental_duration 
	-- GROUP BY 1,2 
	GROUP BY 1,6 
	HAVING count(*) >= 3
	ORDER BY rating DESC, rental_duration DESC;

-- DISTINCT

	SELECT count(*) COUNT FROM actor;
	SELECT first_name FROM actor;
	
	SELECT DISTINCT first_name FROM actor;
	SELECT count(distinct first_name) from actor;

	select distinct first_name, last_name from actor;

	select first_name, last_name, count(*) from actor group by 1, 2 having count(*) > 1;

-- ARRAY

	select film_id, title, special_features from film;

	select film_id, title, special_features[1], special_features[4] from film order by 4;
	
	select film_id, title, special_features from film
	where special_features[1] = 'Commentaries';
	
	select film_id, title, special_features from film
	where special_features[1] like 'C%';

	select distinct special_features from film
	where special_features[1] like 'C%';

	select title, special_features from film
	where special_features[4] like 'B%';

	select title, special_features from film
	where special_features[3] is null;

	select title, special_features from film
	where 'Behind the Scenes' = any(special_features);

/* 
	MySQL date_formatter()
	PostgreSQL to_char()
*/

	select * from rental;

	select rental_id, rental_date, date_part('day', rental_date) from rental;
	
	select rental_id, rental_date from rental
	where date_part('year', rental_date) = 2006;

	select rental_id, rental_date from rental
	where date_part('year', rental_date) = 2005 and date_part('month', rental_date) = 6;

	select rental_id, rental_date from rental
	where to_char(rental_date, 'YYYY') = '2006';

	select rental_id, rental_date from rental
	where to_char(rental_date, 'MM') = '06';

	select rental_id, rental_date from rental
	where to_char(rental_date, 'YYYY-MM') = '2005-05';

	select rental_id, rental_date from rental
	where to_char(rental_date, 'YYYY MM HH24') = '2005 05 23';

	select rental_id, rental_date, to_char(rental_date, 'HH -> HH24') from rental
	where to_char(rental_date, 'YYYY MM HH24') = '2005 05 23';

	select rental_id, rental_date from rental
	where cast(to_char(rental_date, 'YYYY') as integer) = 2006;

 -- JOIN

 	select * from film; -- film_id
	select * from film_category; -- film_id, category_id
	select * from category; -- category_id

	select * from film as f
	join film_category as fc on f.film_id = fc.film_id;  

	select f.film_id, f.title, c.category_id, c.name from film f
	join film_category fc on f.film_id = fc.film_id
	join category c on c.category_id = fc.category_id;

	select f.film_id, f.title, c.category_id, c.name from film f
	join film_category fc on f.film_id = fc.film_id
	join category c on c.category_id = fc.category_id
	where c.name = 'Documentary';

	select * from film; -- language_id
	select * from language; --language_id

-- INNER JOIN (duomenys jungiasi vieni su kitais)
	select f.film_id, f.title, l.language_id, l.name from film f
	join language l on l.language_id = f.language_id;

	
--NOT INNER JOIN
	select f.film_id, f.title, l.language_id, l.name from film f
	join language l on l.language_id = f.language_id
	where l.name not in ('English');

--LEFT JOIN
	select f.film_id, f.title, l.language_id, l.name from language l
	left join film f on l.language_id = f.language_id
	where l.name not in ('English');


	
	
	